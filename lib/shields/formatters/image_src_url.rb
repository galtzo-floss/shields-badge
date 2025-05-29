module Shields
  module Formatters
    module ImageSrcUrl
      SIGNATURE = %i(img_src_url)

      def call(img_src_url:)
        img_src_url
      end
      module_function :call

      def signature
        SIGNATURE
      end
      module_function :signature
    end
  end
end
