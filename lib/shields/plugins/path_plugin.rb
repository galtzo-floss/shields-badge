module Shields
  module Plugins
    module PathPlugin
      # Currently, there are no shared behaviors of Path Parameters that would make sense here.
    end
  end
end

Castkit.configure do |config|
  config.register_plugin(:path_plugin, Shields::Plugins::PathPlugin)
end
