module Shields
  module Plugins
    module GithubRepoPlugin
      class << self
        def setup!(klass)
          klass.required do
            klass.string(:user)
            klass.string(:repo)
          end
        end
      end
    end
  end
end

Castkit.configure do |config|
  config.register_plugin(:github_repo_plugin, Shields::Plugins::GithubRepoPlugin)
end
