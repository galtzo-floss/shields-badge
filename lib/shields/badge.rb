# frozen_string_literal: true

# third party gems
require "castkit"
require "castkit/plugins"
require "version_gem"

# this gem
# Template classes for shields.io badge generation
require_relative "api_template"
require_relative "anchor_href_template"
require_relative "label_text_template"

# Constants
require_relative "categories"

# Formatters
require_relative "formatter/markdown"
require_relative "formatter/image_src_url"

# Serializers
require_relative "serializers/camel_caser"

# Plugins
require_relative "plugins/git_branch_plugin"
require_relative "plugins/github_repo_plugin"
require_relative "plugins/query_plugin"
require_relative "plugins/path_plugin"

# Errors
require_relative "errors/error"
require_relative "errors/not_implemented"
require_relative "errors/validation_error"

# Core
require_relative "badge/base"

# Version
require_relative "badge/version"

# Badges
# Individually required as they are registered
# Or by requiring "shields/register_all"
module Shields
  module Badge
    SAFE_TO_CLASSIFY = /[\p{LOWERCASE-LETTER}\p{DECIMAL-NUMBER}_]{1,511}/
    SAFE_TO_UNDERSCORE = /[\p{UPPERCASE-LETTER}\p{LOWERCASE-LETTER}\p{DECIMAL-NUMBER}]{1,256}/
    SUBBER_UNDER = /(\p{UPPERCASE-LETTER})/
    INITIAL_UNDERSCORE = /^_/

    # Badges will be registered lazily, so that they can be used without loading the entire set.
    def register(klass:)
      raise Errors::Error, "Badge class must be a class, but is #{klass.class}" unless klass.is_a?(Class)

      klass_name = klass.name.split("::").last
      method_name = classy_to_underscore(klass_name)
      define_singleton_method(method_name) do |**kwargs|
        as = kwargs.delete(:as) || :markdown
        formatter_module = case as.to_sym
        # Please write an rSt formatter and submit a PR!
        # Please write an AsciiDoc formatter and submit a PR!
        # Please write an HTML formatter and submit a PR!
        when :image_src_url, :markdown
          Shields::Formatter.const_get(underscore_to_classy(as))
        else
          raise Errors::Error, "Unknown formatter: #{as}"
        end
        badge = klass.new(**kwargs)
        badge.format(formatter_module)
      end
    end
    module_function :register

    def register_by_method_name(method_name:, category: nil)
      # send it through the conversion to ensure it is clean
      # IMPORTANT: use the same logic as respond_to_missing?
      klass_name, clean_method = clean_method_name(method_name)
      return false unless klass_name && (clean_method == method_name.to_s)

      category ||= Categories[clean_method]
      # method_name must also match the file name
      file_parts = ["badge", category, clean_method].compact
      file_extension = File.join(*file_parts)
      require_relative(file_extension)

      klass = Kernel.const_get("Shields::Badge::#{underscore_to_classy(category)}::#{klass_name}")

      register(klass:)
    end
    module_function :register_by_method_name

    def method_missing(method_name, **kwargs, &block)
      super unless register_by_method_name(method_name:)

      send(clean_method, **kwargs)
    end
    module_function :method_missing

    def respond_to_missing?(method_name, include_private = false)
      klass_name, clean_method = clean_method_name(method_name)
      klass_name && (clean_method == method_name.to_s) || super
    end
    module_function :respond_to_missing?

    private

    def clean_method_name(method_name)
      safe_classy = underscore_to_classy(method_name)
      [safe_classy, classy_to_underscore(safe_classy)]
    end
    module_function :clean_method_name

    def underscore_to_classy(underscored)
      safe = underscored[SAFE_TO_CLASSIFY]
      raise Errors::Error, "Invalid badge name must match #{SAFE_TO_CLASSIFY}: #{safe} (#{safe.class}) != #{underscored[0..510]} (#{underscored.class})" unless safe == underscored.to_s

      safe.to_s.split("_").map(&:capitalize).join("")
    end
    module_function :underscore_to_classy

    def classy_to_underscore(string)
      safe = string[SAFE_TO_UNDERSCORE]
      raise Error, "Invalid badge class must match #{SAFE_TO_UNDERSCORE}: #{safe} (#{safe.class}) != #{string[0..255]} (#{string.class})" unless safe == string.to_s

      underscored = safe.gsub(SUBBER_UNDER) { "_#{$1}" }
      shifted_leading_underscore = underscored.sub(INITIAL_UNDERSCORE, "")
      shifted_leading_underscore.downcase
    end
    module_function :classy_to_underscore
  end
end

Shields::Badge::Version.class_eval do
  extend VersionGem::Basic
end
