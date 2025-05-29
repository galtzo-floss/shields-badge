# frozen_string_literal: true

module Shields
  module Badge
    module CodeCoverage
      # Shield for Coveralls test coverage
      # See: https://shields.io/badges/coveralls
      class Coveralls < Base
        class PathDto < ::Castkit::DataObject
          VCS_TYPES = %w[github bitbucket gitlab].freeze
          enable_plugins :path_plugin
          enable_plugins :github_repo_plugin

          required do
            string :vcs_type, ignore_nil: true, aliases: %w(vcsType), validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for vcs_type, must be one of #{VCS_TYPES}" if v && !VCS_TYPES.include?(v)
              true
            }
          end
        end

        class QueryDto < ::Castkit::DataObject
          enable_plugins :query_plugin

          optional do
            string :branch, ignore_nil: true
          end
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/coverallsCoverage/%{vcs_type}/%{user}/%{repo}"

          def anchor_href_template = "https://github.com/%{user}/%{repo}/actions"

          def label_text_template = "%{user}/%{repo} test coverage"
        end
      end
    end
  end
end
