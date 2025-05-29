module Shields
  module Formatters
    module Markdown
      SIGNATURE = %i(label_text img_src_url anchor_href_url)

      def call(label_text:, img_src_url:, anchor_href_url:)
        "[![%{label_text}](%{img_src_url})](%{anchor_href_url})" %
          {label_text:, img_src_url:, anchor_href_url:}
      end
      module_function :call

      def signature
        SIGNATURE
      end
      module_function :signature
    end
  end
end
