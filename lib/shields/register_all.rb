module Shields
  module Registry
    def register_all
      Categories::CATEGORIES.each do |method_name, category|
        Shields::Badge.register_by_method_name(method_name:, category:)
      end
    end
    module_function :register_all
  end
end

Shields::Registry.register_all
