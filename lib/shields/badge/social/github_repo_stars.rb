# frozen_string_literal: true

module Shields
  module Badge
    module Social
      # Shield for GitHub Repo Stars count
      # See: https://shields.io/badges/git-hub-repo-stars
      class GithubRepoStars < Base
        class PathDto < ::Castkit::DataObject
          enable_plugins :path_plugin
          enable_plugins :github_repo_plugin
        end

        class QueryDto < ::Castkit::DataObject
          enable_plugins :query_plugin
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/github/stars/%{user}/%{repo}"

          def anchor_href_template = "https:///github.com/%{user}/%{repo}/stargazers"

          def label_text_template = "GitHub Stars"
        end
      end
    end
  end
end
