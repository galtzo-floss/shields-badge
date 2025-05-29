class BogusBadge < Shields::Badge::Base
  class PathDto < ::Castkit::DataObject
    enable_plugins :path_plugin
    enable_plugins :github_repo_plugin
  end

  class QueryDto < ::Castkit::DataObject
    enable_plugins :query_plugin
  end

  class << self
    # Formatted string specification template
    # See: https://ruby-doc.org/3.4.1/String.html#method-i-25
    def api_template = "/bogus/%{user}/%{repo}"

    def anchor_href_template = "https:///github.com/%{user}/%{repo}/bogus"

    def label_text_template = "GitHub Bogus"
  end
end
