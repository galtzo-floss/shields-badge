# frozen_string_literal: true

module Shields
  module Badge
    module Downloads
      # Shield for RubyGem daily downloads
      # # See: https://shields.io/badges/gem-total-downloads
      class GemTotalDownloads < Base
        class PathDto < ::Castkit::DataObject
          enable_plugins :path_plugin
          required do
            string :gem, ignore_nil: true
          end
        end

        class QueryDto < ::Castkit::DataObject
          enable_plugins :query_plugin
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/gem/dt/%{gem}"

          def anchor_href_template = "https://rubygems.org/gems/%{gem}"

          def label_text_template = "RubyGems Total Downloads"
        end
      end
    end
  end
end
