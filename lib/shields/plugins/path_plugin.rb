module Shields
  module Plugins
    module PathPlugin
    end
  end
end

Castkit.configure do |config|
  config.register_plugin(:path_plugin, Shields::Plugins::PathPlugin)
end
