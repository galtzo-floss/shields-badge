module Shields
  module Plugins
    module GitBranchPlugin
      class << self
        def setup!(klass)
          klass.required do
            klass.string(:branch)
          end
        end
      end
    end
  end
end

Castkit.configure do |config|
  config.register_plugin(:git_branch_plugin, Shields::Plugins::GitBranchPlugin)
end
