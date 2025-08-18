# frozen_string_literal: true

# Galtzo FLOSS Rakefile v1.0.8 - 2025-08-17
#
# CHANGELOG
# v1.0.0 - initial release w/ support for rspec, minitest, rubocop, reek, yard, and stone_checksums
# v1.0.1 - fix test / spec tasks running 2x
# v1.0.2 - fix duplicate task warning from RuboCop
# v1.0.3 - add bench tasks to run mini benchmarks (add scripts to /benchmarks)
# v1.0.4 - add support for floss_funding:install
# v1.0.5 - add support for halting in Rake tasks with binding.b (from debug gem)
# v1.0.6 - add RBS files and checksums to YARD-generated docs site
# v1.0.7 - works with vanilla ruby, non-gem, bundler-managed, projects
# v1.0.8 - improved Dir globs, add back and document rbconfig dependency
#
# MIT License (see License.txt)
#
# Copyright (c) 2025 Peter H. Boling (galtzo.com)
#
# Expected to work in any project that uses Bundler.
#
# Sets up tasks for floss_funding, rspec, minitest, rubocop, reek, yard, and stone_checksums.
#
# rake bench                            # Run all benchmarks (alias for bench:run)
# rake bench:list                       # List available benchmark scripts
# rake bench:run                        # Run all benchmark scripts (skips on CI)
# rake build                            # Build my_gem-1.0.0.gem into the pkg directory
# rake build:checksum                   # Generate SHA512 checksum of my_gem-1.0.0.gem into the checksums directory
# rake build:generate_checksums         # Generate both SHA256 & SHA512 checksums into the checksums directory, and git commit them
# rake bundle:audit:check               # Checks the Gemfile.lock for insecure dependencies
# rake bundle:audit:update              # Updates the bundler-audit vulnerability database
# rake clean                            # Remove any temporary products
# rake clobber                          # Remove any generated files
# rake coverage                         # Run specs w/ coverage and open results in browser
# rake install                          # Build and install my_gem-1.0.0.gem into system gems
# rake install:local                    # Build and install my_gem-1.0.0.gem into system gems without network access
# rake reek                             # Check for code smells
# rake reek:update                      # Run reek and store the output into the REEK file
# rake release[remote]                  # Create tag v1.0.0 and build and push my_gem-1.0.0.gem to rubygems.org
# rake rubocop                          # alias rubocop task to rubocop_gradual
# rake rubocop_gradual                  # Run RuboCop Gradual
# rake rubocop_gradual:autocorrect      # Run RuboCop Gradual with autocorrect (only when it's safe)
# rake rubocop_gradual:autocorrect_all  # Run RuboCop Gradual with autocorrect (safe and unsafe)
# rake rubocop_gradual:check            # Run RuboCop Gradual to check the lock file
# rake rubocop_gradual:force_update     # Run RuboCop Gradual to force update the lock file
# rake spec                             # Run RSpec code examples
# rake test                             # Run tests
# rake yard                             # Generate YARD Documentation

DEBUGGING = ENV.fetch("DEBUG", "false").casecmp("true").zero?

# External gems
require "bundler/gem_tasks" if !Dir[File.join(__dir__, "*.gemspec")].empty?
require "rbconfig" if !Dir[File.join(__dir__, "benchmarks")].empty? # Used by `rake bench:run`
require "debug" if DEBUGGING

defaults = []

is_ci = ENV.fetch("CI", "false").casecmp("true") == 0

### DEVELOPMENT TASKS
# Setup Floss Funding
begin
  require "floss_funding"
  FlossFunding.install_tasks
rescue LoadError
  desc("(stub) floss_funding is unavailable")
  namespace(:floss_funding) do
    task("install") do
      warn("NOTE: floss_funding isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
    end
  end
end

# Setup Kettle Soup Cover
begin
  require "kettle-soup-cover"

  Kettle::Soup::Cover.install_tasks
  # NOTE: Coverage on CI is configured independent of this task.
  #       This task is for local development, as it opens results in browser
  defaults << "coverage" unless Kettle::Soup::Cover::IS_CI
rescue LoadError
  desc("(stub) coverage is unavailable")
  task("coverage") do
    warn("NOTE: kettle-soup-cover isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# Setup Bundle Audit
begin
  require "bundler/audit/task"

  Bundler::Audit::Task.new
  defaults.push("bundle:audit:update", "bundle:audit")
rescue LoadError
  desc("(stub) bundle:audit is unavailable")
  task("bundle:audit") do
    warn("NOTE: bundler-audit isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
  desc("(stub) bundle:audit:update is unavailable")
  task("bundle:audit:update") do
    warn("NOTE: bundler-audit isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# Setup RSpec
begin
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new(:spec)
  # This takes the place of `coverage` task when running as CI=true
  defaults << "spec" if !defined?(Kettle::Soup::Cover) || Kettle::Soup::Cover::IS_CI
rescue LoadError
  desc("spec task stub")
  task(:spec) do
    warn("NOTE: rspec isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# Setup MiniTest
begin
  require "rake/testtask"

  Rake::TestTask.new(:test) do |t|
    t.test_files = FileList["tests/**/test_*.rb"]
  end
rescue LoadError
  desc("test task stub")
  task(:test) do
    warn("NOTE: minitest isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# rubocop:disable Rake/DuplicateTask
if Rake::Task.task_defined?("spec") && !Rake::Task.task_defined?("test")
  desc "run spec task with test task"
  task :test => :spec
elsif !Rake::Task.task_defined?("spec") && Rake::Task.task_defined?("test")
  desc "run test task with spec task"
  task :spec => :test
else
  # Add spec as pre-requisite to 'test'
  Rake::Task[:test].enhance(["spec"])
end
# rubocop:enable Rake/DuplicateTask

# Setup RuboCop-LTS
begin
  require "rubocop/lts"

  Rubocop::Lts.install_tasks
  # Make autocorrect the default rubocop task
  defaults << "rubocop_gradual:autocorrect"
rescue LoadError
  desc("(stub) rubocop_gradual is unavailable")
  task(:rubocop_gradual) do
    warn("NOTE: rubocop-lts isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# Setup Reek
begin
  require "reek/rake/task"

  Reek::Rake::Task.new do |t|
    t.fail_on_error = true
    t.verbose = false
    t.source_files = "{lib,spec,tests}/**/*.rb"
  end

  # Store current Reek output into REEK file
  require "open3"
  desc("Run reek and store the output into the REEK file")
  task("reek:update") do
    # Run via Bundler if available to ensure the right gem version is used
    cmd = [Gem.bindir ? File.join(Gem.bindir, "bundle") : "bundle", "exec", "reek"]

    output, status = Open3.capture2e(*cmd)

    File.write("REEK", output)

    # Mirror the failure semantics of the standard reek task
    unless status.success?
      abort("reek:update failed (reek reported smells). Output written to REEK")
    end
  end
  defaults << "reek:update" unless is_ci
rescue LoadError
  desc("(stub) reek is unavailable")
  task(:reek) do
    warn("NOTE: reek isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# Setup Yard
begin
  require "yard"

  YARD::Rake::YardocTask.new(:yard) do |t|
    t.files = [
      # Source Splats (alphabetical)
      "lib/**/*.rb",
      "-", # source and extra docs are separated by "-"
      # Extra Files (alphabetical)
      "*.cff",
      "*.md",
      "*.txt",
      "checksums/**/*.sha256",
      "checksums/**/*.sha512",
      "REEK",
      "sig/**/*.rbs",
    ]
  end
  defaults << "yard"
rescue LoadError
  desc("(stub) yard is unavailable")
  task(:yard) do
    warn("NOTE: yard isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

### RELEASE TASKS
# Setup stone_checksums
begin
  require "stone_checksums"

  GemChecksums.install_tasks
rescue LoadError
  desc("(stub) build:generate_checksums is unavailable")
  task("build:generate_checksums") do
    warn("NOTE: stone_checksums isn't installed, or is disabled for #{RUBY_VERSION} in the current environment")
  end
end

# --- Benchmarks (dev-only) ---
namespace :bench do
  desc "List available benchmark scripts"
  task :list do
    bench_files = Dir[File.join(__dir__, "benchmarks", "*.rb")].sort
    if bench_files.empty?
      puts "No benchmark scripts found under benchmarks/."
    else
      bench_files.each { |f| puts File.basename(f) }
    end
  end

  desc "Run all benchmark scripts (skips on CI)"
  task :run do
    if ENV.fetch("CI", "false").casecmp("true").zero?
      puts "Benchmarks are disabled on CI. Skipping."
      next
    end

    ruby = RbConfig.ruby
    bundle = Gem.bindir ? File.join(Gem.bindir, "bundle") : "bundle"
    bench_files = Dir[File.join(__dir__, "benchmarks", "*.rb")].sort
    if bench_files.empty?
      puts "No benchmark scripts found under benchmarks/."
      next
    end

    use_bundler = ENV.fetch("BENCH_BUNDLER", "0") == "1"

    bench_files.each do |script|
      puts "\n=== Running: #{File.basename(script)} ==="
      if use_bundler
        cmd = [bundle, "exec", ruby, "-Ilib", script]
        system(*cmd) || abort("Benchmark failed: #{script}")
      else
        # Run benchmarks without Bundler to reduce overhead and better reflect plain ruby -Ilib
        begin
          require "bundler"
          Bundler.with_unbundled_env do
            system(ruby, "-Ilib", script) || abort("Benchmark failed: #{script}")
          end
        rescue LoadError
          # If Bundler isn't available, just run directly
          system(ruby, "-Ilib", script) || abort("Benchmark failed: #{script}")
        end
      end
    end
  end
end

desc "Run all benchmarks (alias for bench:run)"
task :bench => "bench:run"

task :default => defaults
