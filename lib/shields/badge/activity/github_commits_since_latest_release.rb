# frozen_string_literal: true

module Shields
  module Badge
    module Activity
      # Shield for the number of GitHub commits since the last release
      # See: https://shields.io/badges/git-hub-commits-since-latest-release
      class GithubCommitsSinceLatestRelease < Base
        class PathDto < ::Castkit::DataObject
          enable_plugins :path_plugin
          enable_plugins :github_repo_plugin
        end

        class QueryDto < ::Castkit::DataObject
          OPTIONS = {
            sort: %w[date semver],
            include_prereleases: %w[true false],
          }
          FILTER_MATCHER = /[*!]/

          enable_plugins :query_plugin

          optional do
            string :include_prereleases, ignore_nil: true, validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for include_prereleases, must be one of #{OPTIONS[:include_prereleases]}" if v && !OPTIONS[:include_prereleases].include?(v)
              true
            }
            string :sort, ignore_nil: true, validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for sort, must be one of #{OPTIONS[:sort]}" if v && !OPTIONS[:sort].include?(v)
              true
            }
            string :filter, ignore_nil: true, validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for filter, must use * or ! but was #{v}" if v && !v[FILTER_MATCHER]
              true
            }
          end
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/github/commits-since/%{user}/%{repo}/latest"

          def anchor_href_template = "https://github.com/%{user}/%{repo}/releases"

          def label_text_template = "%{user}/%{repo} commits since latest release"
        end
      end
    end
  end
end
