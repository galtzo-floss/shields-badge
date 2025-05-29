module Shields
  module Serializers
    class CamelCaser < Castkit::Serializers::DefaultSerializer
      UPPER_START = /\p{UPPERCASE-LETTER}+.*/
      UNDERSCORED = /_/

      private

      def call
        result = super
        result.transform_keys! do |key|
          if object.camel_case_keys.include?(key)
            camel_case(key.to_s).to_sym
          else
            key
          end
        end
      end

      ##
      # Convert to camel case (lower first letter).
      #
      #   "foo_bar".camel_case          #=> "fooBar"
      #
      # @return [String] copy of str converted to camel case (lower first letter).
      #
      # @api public
      def camel_case(str)
        return str if !str[UNDERSCORED] && str[UPPER_START]

        words = str.split("_")
        first_word = words.shift
        first_word + words.map { |e| e.capitalize }.join
      end
    end
  end
end
