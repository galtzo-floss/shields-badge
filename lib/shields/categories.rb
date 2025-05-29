module Shields
  module Categories
    CATEGORIES = {
      "github_commits_since_latest_release" => "activity",
      "github_branch_check_runs" => "build",
      "coveralls" => "code_coverage",
      "gem_download_rank" => "downloads",
      "gem_total_downloads" => "downloads",
      "github_repo_stars" => "social",
    }

    def [](name)
      CATEGORIES[name]
    end
    module_function :[]
  end
end
