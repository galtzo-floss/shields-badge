# frozen_string_literal: true

RSpec.describe Shields::Badge::CodeCoverage::Coveralls do
  subject(:badger) { instance.format(formatter) }

  let(:instance) { described_class.new(**args) }
  let(:args) {
    {
      path_parameters:,
      query_parameters:,
    }
  }
  let(:path_parameters) { {user: "green", repo: "red", vcs_type: "github"} }
  let(:query_parameters) { {} }
  let(:formatter) { Shields::Formatters::Markdown }

  it "generates a badge" do
    expect(badger).to eq("[![green/red test coverage](https://img.shields.io/coverallsCoverage/github/green/red?)](https://github.com/green/red/actions)")
  end

  context "with image src url formatter" do
    let(:formatter) { Shields::Formatters::ImageSrcUrl }

    it "generates an image src url" do
      expect(badger).to eq("https://img.shields.io/coverallsCoverage/github/green/red?")
    end
  end

  context "with valid query parameters" do
    let(:query_parameters) {
      {
        branch: "main",
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
      expect(badger).to eq("[![green/red test coverage](https://img.shields.io/coverallsCoverage/github/green/red?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred&branch=main)](https://github.com/green/red/actions)")
    end
  end

  context "with invalid cache_seconds" do
    let(:query_parameters) {
      {
        branch: "main",
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
        branch: "main",
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

  context "when vcs_type is invalid" do
    let(:path_parameters) { {vcs_type: "blue", user: "green", repo: "red"} }

    it "raises an error" do
      block_is_expected.to raise_error(
        Shields::Errors::ValidationError,
        %{invalid option for vcs_type, must be one of ["github", "bitbucket", "gitlab"]},
      )
    end
  end
end

RSpec.describe Shields::Badge::CodeCoverage::Coveralls::PathDto do
  let(:instance) { described_class.new(**args) }
  let(:args) { {user: "green", repo: "red", vcs_type: "github"} }

  context "when valid arguments" do
    it "has user" do
      expect(instance.user).to eq("green")
    end

    it "has repo" do
      expect(instance.repo).to eq("red")
    end

    it "has vcs_type" do
      expect(instance.vcs_type).to eq("github")
    end
  end

  context "when vcs_type is invalid" do
    let(:args) { {vcs_type: "blue", user: "green", repo: "red"} }

    it "raises an error" do
      block_is_expected.to raise_error(
        Castkit::ContractError,
        %{Validation failed},
      )
    end
  end
end

RSpec.describe Shields::Badge::CodeCoverage::Coveralls::QueryDto do
  let(:instance) { described_class.new(**args) }
  let(:args) { {logo_color: "orange"} }

  it "has no branch" do
    expect(instance.branch).to be_nil
  end

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

  context "with branch" do
    let(:args) { {branch: "circle"} }

    it "has branch" do
      expect(instance.branch).to eq("circle")
    end
  end
end
