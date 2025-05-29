# frozen_string_literal: true

RSpec.describe Shields::Serializers::CamelCaser do
  let(:query_dto) { Shields::Badge::Activity::GithubCommitsSinceLatestRelease::QueryDto.new(**args) }
  let(:args) { {logo_color: "green"} }

  describe "#call" do
    it "succeeds" do
      result = described_class.call(query_dto)
      expect(result).to eq({logoColor: "green"})
    end

    context "when all options specified" do
      let(:args) {
        {
          cache_seconds: "3600",
          color: "blue",
          filter: "*",
          include_prereleases: "true",
          label: "commits",
          label_color: "yellow",
          link: "https://example.org/commits",
          logo: "github",
          logo_color: "purple",
          logo_size: "auto",
          sort: "semver",
          style: "plastic",
        }
      }

      it "succeeds" do
        result = described_class.call(query_dto)
        expect(result).to eq({
          cacheSeconds: "3600",
          color: "blue",
          filter: "*",
          include_prereleases: "true",
          label: "commits",
          labelColor: "yellow",
          link: "https://example.org/commits",
          logo: "github",
          logoColor: "purple",
          logoSize: "auto",
          sort: "semver",
          style: "plastic",
        })
      end
    end
  end
end
