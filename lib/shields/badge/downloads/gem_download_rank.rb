# frozen_string_literal: true

module Shields
  module Badge
    module Downloads
      # Shield for RubyGem total downloads
      # # See: https://shields.io/badges/gem-download-rank
      class GemDownloadRank < Base
        class PathDto < ::Castkit::DataObject
          PERIODS = %w[rt rd].freeze
          enable_plugins :path_plugin
          required do
            string :gem, ignore_nil: true
            string :period, ignore_nil: true, validator: ->(v, _options) {
              raise Errors::ValidationError, "invalid option for period, must be one of #{PERIODS}" if v && !PERIODS.include?(v)
              true
            }
          end
        end

        class QueryDto < ::Castkit::DataObject
          enable_plugins :query_plugin
        end

        class << self
          # Formatted string specification template
          # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
          def api_template = "/gem/%{period}/%{gem}"

          def anchor_href_template = "https://rubygems.org/gems/%{gem}"

          def label_text_template = "RubyGems Download Rank"
        end
      end
    end
  end
end
