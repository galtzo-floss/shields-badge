# frozen_string_literal: true

RSpec.describe Shields::Badge::Downloads::GemDownloadRank do
  subject(:badger) { instance.format(formatter) }

  let(:instance) { described_class.new(**args) }
  let(:args) {
    {
      path_parameters:,
      query_parameters:,
    }
  }
  let(:path_parameters) { {period: "rt", gem: "orange"} }
  let(:query_parameters) { {} }
  let(:formatter) { Shields::Formatters::Markdown }

  it "generates a badge" do
    expect(badger).to eq("[![RubyGems Download Rank](https://img.shields.io/gem/rt/orange?)](https://rubygems.org/gems/orange)")
  end

  context "with image src url formatter" do
    let(:formatter) { Shields::Formatters::ImageSrcUrl }

    it "generates an image src url" do
      expect(badger).to eq("https://img.shields.io/gem/rt/orange?")
    end
  end

  context "with valid query parameters" do
    let(:query_parameters) {
      {
        style: "flat",
        logo: "github",
        logo_color: "yellow",
        logo_size: "auto",
        label: "banana",
        label_color: "blue",
        color: "black",
        cache_seconds: "3600",
        link: "https://example.com/green/red",
      }
    }

    it "generates a badge" do
      expect(badger).to eq("[![RubyGems Download Rank](https://img.shields.io/gem/rt/orange?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred)](https://rubygems.org/gems/orange)")
    end
  end

  context "with invalid cache_seconds" do
    let(:query_parameters) {
      {
        style: "flat",
        logo: "github",
        logo_color: "yellow",
        logo_size: "auto",
        label: "banana",
        label_color: "blue",
        color: "black",
        cache_seconds: "a long timer",
        link: "https://example.com/green/red",
      }
    }

    it "raises an error" do
      block_is_expected.to raise_error(
        Shields::Errors::ValidationError,
        "invalid option for cache_seconds, must be an integer string but was a long timer (String)",
      )
    end
  end

  context "with invalid style" do
    let(:query_parameters) {
      {
        style: "owl-in-towel",
        logo: "github",
        logo_color: "yellow",
        logo_size: "auto",
        label: "banana",
        label_color: "blue",
        color: "black",
        cache_seconds: "3600",
        link: "https://example.com/green/red",
      }
    }

    it "raises an error" do
      block_is_expected.to raise_error(
        Shields::Errors::ValidationError,
        %{invalid option for style, must be one of ["flat", "flat-square", "plastic", "for-the-badge", "social"]},
      )
    end
  end
end

RSpec.describe Shields::Badge::Downloads::GemDownloadRank::PathDto do
  let(:instance) { described_class.new(**args) }
  let(:args) { {period: "rt", gem: "orange"} }

  context "when valid arguments" do
    it "has period" do
      expect(instance.period).to eq("rt")
    end

    it "has gem" do
      expect(instance.gem).to eq("orange")
    end
  end
end

RSpec.describe Shields::Badge::Downloads::GemDownloadRank::QueryDto do
  let(:instance) { described_class.new(**args) }
  let(:args) { {logo_color: "orange"} }

  it "has no logo" do
    expect(instance.logo).to be_nil
  end

  context "with logoColor" do
    let(:args) { {logoColor: "blue"} }

    it "has logo_color" do
      expect(instance.logo_color).to eq("blue")
    end
  end

  context "with logo_color" do
    it "has logo_color" do
      expect(instance.logo_color).to eq("orange")
    end
  end

  context "with logo" do
    let(:args) { {logo: "gitlab"} }

    it "has logo" do
      expect(instance.logo).to eq("gitlab")
    end
  end
end
