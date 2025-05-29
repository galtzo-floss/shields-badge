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

  gl_homepage = "https://gitlab.com/galtzo-floss/shields-badge"
  gh_mirror = "https://github.com/galtzo-floss/shields-badge"

  spec.summary = "RubyGem CLI version of the interactive tool found at shields.io/badges"
  spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = "TODO: Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = "https://#{spec.name}.galtzo.com/"
  spec.metadata["source_code_uri"] = "#{gh_mirror}/releases/tag//v#{spec.version}"
  spec.metadata["changelog_uri"] = "#{gl_homepage}/-/blob/v#{spec.version}/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "#{gl_homepage}/-/issues"
  spec.metadata["documentation_uri"] = "https://www.rubydoc.info/gems/#{spec.name}/#{spec.version}"
  spec.metadata["wiki_uri"] = "#{gl_homepage}/-/wiki"
  spec.metadata["funding_uri"] = "https://liberapay.com/pboling"
  spec.metadata["news_uri"] = "https://www.railsbling.com/tags/#{spec.name}"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
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
  spec.executables = []

  spec.add_dependency("castkit", "~> 0.3.0")   # Ruby >= 2.7
  spec.add_dependency("version_gem", ">= 1.1.8", "< 3")   # Ruby >= 2.2

  # Development Tasks
  spec.add_development_dependency("rake", "~> 13.0")                    # ruby >= 2.2

  # Audit
  spec.add_development_dependency("bundler-audit", "~> 0.9.2")

  # Testing
  spec.add_development_dependency("rspec", "~> 3.13")                   # ruby >= 0
  spec.add_development_dependency("rspec-block_is_expected", "~> 1.0", ">= 1.0.6")  # ruby >= 1.8.7

  # Releasing
  spec.add_development_dependency("stone_checksums", "~> 1.0")                      # ruby >= 2.2

  # Coverage
  spec.add_development_dependency("kettle-soup-cover", "~> 1.0", ">= 1.0.6")

  # Linting
  spec.add_development_dependency("reek", "~> 6.4")
  spec.add_development_dependency("rubocop", "~> 1.75")
  spec.add_development_dependency("rubocop-lts", "~> 22.1", ">= 22.1.3") # Linting for Ruby >= 3.1
  spec.add_development_dependency("rubocop-packaging", "~> 0.6", ">= 0.6.0")
  spec.add_development_dependency("rubocop-rspec", "~> 3.2")
  spec.add_development_dependency("standard", "~> 1.47")

  # Documentation
  spec.add_development_dependency("kramdown", "~> 2.5", ">= 2.5.1") # Ruby >= 2.5
  spec.add_development_dependency("kramdown-parser-gfm", "~> 1.1") # Ruby >= 2.3
  spec.add_development_dependency("yard", "~> 0.9", ">= 0.9.37")
  spec.add_development_dependency("yard-junk", "~> 0.0", ">= 0.0.10")
  spec.add_development_dependency("yard-relative_markdown_links", "~> 0.5.0")

  # Std Lib extractions
  spec.add_development_dependency("rdoc", "~> 6.11")
end
