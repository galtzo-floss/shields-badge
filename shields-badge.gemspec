# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "shields-badge"
  spec.version = Module.new.tap { |mod| Kernel.load("lib/shields/badge/version.rb", mod) }::Shields::Badge::Version::VERSION
  spec.authors = ["Peter H. Boling"]
  spec.email = ["peter.boling@gmail.com"]

  # Linux distros often package gems and securely certify them independent
  #   of the official RubyGem certification process. Allowed via ENV["SKIP_GEM_SIGNING"]
  # Ref: https://gitlab.com/oauth-xx/version_gem/-/issues/3
  # Hence, only enable signing if `SKIP_GEM_SIGNING` is not set in ENV.
  # See CONTRIBUTING.md
  unless ENV.include?("SKIP_GEM_SIGNING")
    user_cert = "certs/#{ENV.fetch("GEM_CERT_USER", ENV["USER"])}.pem"
    cert_file_path = File.join(__dir__, user_cert)
    cert_chain = cert_file_path.split(",")
    cert_chain.select! { |fp| File.exist?(fp) }
    if cert_file_path && cert_chain.any?
      spec.cert_chain = cert_chain
      if $PROGRAM_NAME.end_with?("gem") && ARGV[0] == "build"
        spec.signing_key = File.join(Gem.user_home, ".ssh", "gem-private_key.pem")
      end
    end
  end

  spec.summary = "RubyGem version of the interactive tool found at shields.io/badges"
  spec.description = <<~DESC
    Shields::Badge.gem_total_downloads(path_parameters: {gem: 'rails'})
    => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/rails?)](https://rubygems.org/gems/rails)"
  DESC
  spec.homepage = "https://github.com/galtzo-floss/shields-badge" # So stars feature on RubyGems.org works
  gl_homepage = "https://gitlab.com/galtzo-floss/shields-badge"
  gh_mirror = spec.homepage
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata["homepage_uri"] = "https://#{spec.name}.galtzo.com/"
  spec.metadata["source_code_uri"] = "#{gh_mirror}/releases/tag/v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{gl_homepage}/-/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{gl_homepage}/-/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{gl_homepage}/-/wiki"
  spec.metadata["funding_uri"] = "https://github.com/sponsors/pboling"
  spec.metadata["news_uri"] = "https://www.railsbling.com/tags/#{spec.name}"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files are part of each release.
  spec.files = Dir[
    # Splats (alphabetical)
    "lib/**/*",
  ]
  # Automatically included with gem package, no need to list again in files.
  spec.extra_rdoc_files = Dir[
    # Files (alphabetical)
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
  ]
  spec.rdoc_options += [
    "--title",
    "#{spec.name} - #{spec.summary}",
    "--main",
    "CHANGELOG.md",
    "CODE_OF_CONDUCT.md",
    "CONTRIBUTING.md",
    "LICENSE.txt",
    "README.md",
    "SECURITY.md",
    "--line-numbers",
    "--inline-source",
    "--quiet",
  ]
  spec.require_paths = ["lib"]
  spec.bindir = "exe"
  # the files listed are relative paths from bindir above.
  spec.executables = []

  spec.add_dependency("castkit", "~> 0.3.0")   # Ruby >= 2.7
  spec.add_dependency("version_gem", ">= 1.1.8", "< 3")   # Ruby >= 2.2

  # NOTE: It is preferable to list development dependencies in the gemspec due to increased
  #       visibility and discoverability on RubyGems.org.
  #       However, development dependencies in gemspec will install on
  #       all versions of Ruby that will run in CI.
  #       This gem, and its runtime dependencies, will install on Ruby down to 3.1.
  #       This gem, and its development dependencies, will install on Ruby down to 3.1.
  #       Thus, dev dependencies in gemspec must have
  #
  #       required_ruby_version ">= 3.1" (or lower)
  #
  #       Development dependencies that require strictly newer Ruby versions should be in a "gemfile",
  #       and preferably a modular one (see gemfiles/modular/*.gemfile).

  # Development Tasks
  spec.add_development_dependency("rake", "~> 13.0")                          # ruby >= 2.2

  # Audit
  spec.add_development_dependency("bundler-audit", "~> 0.9.2")                # ruby >= 2.0.0

  ### Testing
  spec.add_development_dependency("appraisal2", "~> 3.0")                     # ruby >= 1.8.7, for testing against multiple versions of dependencies
  spec.add_development_dependency("rspec", "~> 3.13")                         # ruby > 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0")        # ruby >= 1.8.7, for block_is_expected.to syntax
  spec.add_development_dependency("rspec_junit_formatter", "~> 0.6")          # ruby >= 2.3.0, for GitLab Test Result Parsing
  spec.add_development_dependency("rspec-stubbed_env", "~> 1.0")              # ruby >= 2.3.0, helper for stubbing ENV in specs
  spec.add_development_dependency("silent_stream", "~> 1.0", ">= 1.0.11")     # ruby >= 2.3.0, for output capture
  spec.add_development_dependency("timecop", "~> 0.9", ">= 0.9.10")           # ruby >= 1.9.2, for time-based testing

  # Release Tasks
  spec.add_development_dependency("stone_checksums", "~> 1.0")                # ruby >= 2.2, generate SHA-256 and SHA-512 checksums for releases

  # Coverage
  spec.add_development_dependency("kettle-soup-cover", "~> 1.0", ">= 1.0.10") # ruby >= 2.7.0, ENV-based simplecov config for all CI platforms & output formats

  # Linting
  spec.add_development_dependency("reek", "~> 6.4")                           # ruby >= 3.1.0, code smell detector
  spec.add_development_dependency("rubocop", "~> 1.75", ">= 1.75.5")          # ruby >= 2.7.0, linting tool
  spec.add_development_dependency("rubocop-lts", "~> 24.0", ">= 24.0.2")      # ruby >= 3.2, linting config for strict Ruby >= 3.2 compatibility
  spec.add_development_dependency("rubocop-packaging", "~> 0.6", ">= 0.6.0")  # ruby >= 2.7.0, linting config for packaging (e.g., linux distros)
  spec.add_development_dependency("rubocop-rspec", "~> 3.6")                  # ruby >= 2.7.0, linting config for RSpec
  spec.add_development_dependency("standard", "~> 1.50")                      # ruby >= 3.0.0, linting tool (primarily used for configs)

  # Documentation
  spec.add_development_dependency("kramdown", "~> 2.5", ">= 2.5.1")           # Ruby >= 2.5, Markdown parser
  spec.add_development_dependency("kramdown-parser-gfm", "~> 1.1")            # Ruby >= 2.3, GFM support for kramdown
  spec.add_development_dependency("yard", "~> 0.9", ">= 0.9.37")              # Ruby >= 0, YARD Ruby source code documentation generator
  spec.add_development_dependency("yard-junk", "~> 0.0", ">= 0.0.10")         # ruby >= 2.7.0, YARD plugin for removing junk from docs
  spec.add_development_dependency("yard-relative_markdown_links", "~> 0.5.0") # ruby >= 3.2, YARD plugin for relative Markdown links

  # Std Lib extractions
  spec.add_development_dependency("rdoc", "~> 6.14", ">= 6.14.2")             # ruby >= 2.6.0, RDoc Ruby source code documentation generator
end
