module Shields
  module Plugins
    module QueryPlugin
      CAMEL_CASE_KEYS = %i[
        logo_color
        logo_size
        label_color
        cache_seconds
      ].freeze
      UNIVERSAL_OPTIONS = {
        style: %w[flat flat-square plastic for-the-badge social],
      }

      class << self
        def setup!(klass)
          klass.optional do
            klass.string(:style, ignore_nil: true, default: "flat", validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for style, must be one of #{UNIVERSAL_OPTIONS[:style]}" if v && !UNIVERSAL_OPTIONS[:style].include?(v)

              true
            })
            klass.string(:logo, ignore_nil: true)
            klass.string(:logo_color, ignore_nil: true, aliases: %w(logoColor))
            klass.string(:logo_size, ignore_nil: true, aliases: %w(logoSize))
            klass.string(:label, ignore_nil: true)
            klass.string(:label_color, ignore_nil: true, aliases: %w(labelColor))
            klass.string(:color, ignore_nil: true)
            klass.string(:cache_seconds, ignore_nil: true, aliases: %w(cacheSeconds), validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for cache_seconds, must be an integer string but was #{v} (#{v.class})" if v && v.to_i.to_s != v
              true
            })
            klass.string(:link, ignore_nil: true)
          end
          klass.serializer(Shields::Serializers::CamelCaser)
        end
      end

      # Usage in DTO classes that include this plugin
      # def camel_case_keys
      #   super + [:another_camel_case_key]
      # end
      def camel_case_keys
        CAMEL_CASE_KEYS
      end
    end

    Castkit.configure do |config|
      config.register_plugin(:query_plugin, QueryPlugin)
    end
  end
end
