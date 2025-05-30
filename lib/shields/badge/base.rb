require "uri"

module Shields
  module Badge
    class Base
      HTTP_METHOD = :get
      BASE_URL = {
        "svg" => "https://img.shields.io",
        "png" => "https://raster.shields.io",
      }

      class << self
        def label_text
          raise Errors::NotImplemented, "Subclasses must implement #label_text"
        end

        def img_src_url
          raise Errors::NotImplemented, "Subclasses must implement #img_src_url"
        end

        def anchor_href_url
          raise Errors::NotImplemented, "Subclasses must implement #anchor_href_url"
        end
      end

      attr_accessor :path_parameters,
        :query_parameters,
        :image_type,
        :anchor_href,
        :anchor_params,
        :label

      def initialize(path_parameters: {}, query_parameters: {}, image_type: "svg", **options)
        if path_parameters.nil? || path_parameters.empty?
          path_parameters = extract_top_level_options(options, self.class::PathDto)
        end
        if query_parameters.nil? || query_parameters.empty?
          query_parameters = extract_top_level_options(options, self.class::QueryDto)
        end
        self.path_parameters = self.class::PathDto.new(**path_parameters)
        self.query_parameters = self.class::QueryDto.new(**query_parameters)
        self.image_type = image_type
        self.anchor_href = options.fetch(:anchor_href, nil)
        self.anchor_params = options.fetch(:anchor_params, {})
        self.label = options.fetch(:label, nil)
      end

      def format(formatter)
        args = formatter.signature.each_with_object({}) { |key, memo| memo[key] = send(key) }
        formatter.call(
          **args,
        )
      end

      protected

      def extract_top_level_options(options, dto_klass)
        path_dto_klass = dto_klass
        main_args = path_dto_klass.attributes.keys
        args_for_dto = path_dto_klass.attributes.values.each_with_object(main_args) { |at, arr| arr.concat(at.options[:aliases].map(&:to_sym)) }
        options.select { |k, _v| args_for_dto.include?(k) }
      end

      # Formatted string specification template
      # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
      def label_text
        label || LabelTextTemplate.new(self.class.label_text_template)
          .call(**path_parameters.to_h)
      end

      def img_src_url
        URI("#{base_url}#{ApiTemplate.new(self.class.api_template)
                                      .call(**path_parameters.to_h)}")
          .tap { |uri| uri.query = URI.encode_www_form(query_parameters.to_h) }
          .to_s
      end

      def anchor_href_url
        anchor_href || AnchorHrefTemplate.new(self.class.anchor_href_template)
          .call(**path_parameters.to_h.merge(anchor_params))
      end

      def base_url
        raise Errors::Error, "Unknown image type: #{image_type} must be one of #{BASE_URL.keys}" unless BASE_URL.key?(image_type)

        BASE_URL[image_type]
      end
    end
  end
end
