# frozen_string_literal: true

module Shields
  module Badge
    module Build
      # Shield for GitHub Actions CI status
      # See: https://shields.io/badges/git-hub-branch-check-runs
      class GithubBranchCheckRuns < Base
        class PathDto < ::Castkit::DataObject
          enable_plugins :path_plugin
          enable_plugins :github_repo_plugin
          enable_plugins :git_branch_plugin
        end

        class QueryDto < ::Castkit::DataObject
          enable_plugins :query_plugin

          optional do
            string :name_filter, ignore_nil: true, aliases: %w(nameFilter)
          end

          # Calls up to QueryPlugin#camel_case_keys
          def camel_case_keys
            super + [:name_filter]
          end
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/github/check-runs/%{user}/%{repo}/%{branch}"

          def anchor_href_template = "https://github.com/%{user}/%{repo}/actions"

          def label_text_template = "%{user}/%{repo} check runs (branch: %{branch})"
        end
      end
    end
  end
end
