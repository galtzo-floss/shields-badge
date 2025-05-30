# frozen_string_literal: true

RSpec.describe Shields::Badge::Base do
  context "when inherited" do
    subject(:klass) {
      Class.new(described_class)
    }

    describe "::label_text" do
      subject(:label_text) { klass.label_text }

      it "raises error" do
        block_is_expected.to raise_error(Shields::Errors::NotImplemented)
      end
    end

    describe "::img_src_url" do
      subject(:img_src_url) { klass.img_src_url }

      it "raises error" do
        block_is_expected.to raise_error(Shields::Errors::NotImplemented)
      end
    end

    describe "::anchor_href_url" do
      subject(:anchor_href_url) { klass.anchor_href_url }

      it "raises error" do
        block_is_expected.to raise_error(Shields::Errors::NotImplemented)
      end
    end

    describe "#base_url" do
      subject(:base_url_caller) { instance.format(Shields::Formatters::ImageSrcUrl) }

      let(:instance) { BogusBadge.new(**args) }
      let(:args) {
        {
          path_parameters:,
          query_parameters:,
          image_type: image_type,
        }
      }
      let(:path_parameters) { {user: "green", repo: "red"} }
      let(:query_parameters) { {} }
      let(:image_type) { "svg" }

      it "has working base_url caller" do
        expect(base_url_caller).to eq("https://img.shields.io/bogus/green/red?")
      end

      context "when missing image_type" do
        let(:image_type) { nil }

        it "raises error" do
          block_is_expected.to raise_error(Shields::Errors::Error, %{Unknown image type:  must be one of ["svg", "png"]})
        end
      end

      context "when all parameters are top-level" do
        let(:query_parameters) { {logoColor: "yellow"} }
        let(:args) {
          {
            **path_parameters,
            **query_parameters,
            image_type: image_type,
          }
        }

        it "has working base_url caller" do
          expect(base_url_caller).to eq("https://img.shields.io/bogus/green/red?logoColor=yellow")
        end
      end
    end
  end
end
