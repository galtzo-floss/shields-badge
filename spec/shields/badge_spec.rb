# frozen_string_literal: true

RSpec.describe Shields::Badge do
  describe "::register" do
    subject(:register) { described_class.register(klass:) }

    let(:klass) do
      Struct.new("SomeFunBadge", :style, :as, keyword_init: true) do
        def format(formatter_module)
          args = {img_src_url: "https://example.org/image.png"}
          formatter_name = formatter_module.name.split("::").last.downcase
          if formatter_name[/markdown/]
            args[:label_text] = "Woo Hoo!"
            args[:anchor_href_url] = "https://example.com/little-project"
          end
          formatter_module.call(**args)
        end
      end
    end

    it "does not raise error" do
      block_is_expected.not_to raise_error
    end

    context "when bad klass" do
      let(:klass) { "not a class" }

      it "raises error" do
        block_is_expected.to raise_error(Shields::Errors::Error, "Badge class must be a class, but is String")
      end
    end

    context "when bad as" do
      subject(:bad_as) {
        described_class.some_fun_badge(style: "strawberry", as: "not a formatter type")
      }

      it "raises error" do
        register
        block_is_expected.to raise_error(Shields::Errors::Error, "Unknown formatter: not a formatter type")
      end
    end

    context "when good custom as" do
      subject(:good_as) {
        described_class.some_fun_badge(style: "strawberry", as: :image_src_url)
      }

      it "raises error" do
        register
        expect(good_as).to eq("https://example.org/image.png")
      end
    end

    it "returns method symbol for arbitrary badge" do
      expect(register).to eq(:some_fun_badge)
    end

    it "defines method for arbitrary badge" do
      register
      expect(described_class).to respond_to(:some_fun_badge)
    end

    it "returns markdown format by default" do
      register
      expect(
        described_class.some_fun_badge(style: "strawberry"),
      ).to eq("[![Woo Hoo!](https://example.org/image.png)](https://example.com/little-project)")
    end

    it "returns url format when indicated" do
      register
      expect(
        described_class.some_fun_badge(style: "strawberry", as: :image_src_url),
      ).to eq("https://example.org/image.png")
    end
  end

  describe "::register_by_method_name" do
    subject(:register_by_method_name) { described_class.register_by_method_name(method_name:, category:) }

    let(:method_name) { "some_fun_badge" }
    let(:category) { "some_category" }

    context "when not internal badge class" do
      it "raises error" do
        block_is_expected.to raise_error(LoadError, /cannot load such file.*some_fun_badge/)
      end
    end

    context "when not valid badge method name" do
      let(:method_name) { "BADCLASS" }

      it "raises error" do
        block_is_expected.to raise_error(Shields::Errors::Error, "Invalid badge name must match (?-mix:[\\p{LOWERCASE-LETTER}\\p{DECIMAL-NUMBER}_]{1,511}):  (NilClass) != BADCLASS (String)")
      end
    end

    context "when is internal badge class" do
      context "with nil category" do
        let(:method_name) { "github_commits_since_latest_release" }
        let(:category) { nil }

        it "does not raise" do
          block_is_expected.not_to raise_error
        end

        it "returns method symbol" do
          expect(register_by_method_name).to eq(:github_commits_since_latest_release)
        end
      end

      context "with incorrect category" do
        let(:method_name) { "github_commits_since_latest_release" }
        let(:category) { "sloppy" }

        it "raises error" do
          block_is_expected.to raise_error(LoadError, /cannot load such file.*github_commits_since_latest_release/)
        end
      end

      context "with correct category" do
        let(:method_name) { "github_commits_since_latest_release" }
        let(:category) { "activity" }

        it "does not raise" do
          block_is_expected.not_to raise_error
        end

        it "returns method symbol" do
          expect(register_by_method_name).to eq(:github_commits_since_latest_release)
        end
      end
    end
  end

  describe "::github_commits_since_latest_release" do
    subject(:badge_method) { described_class.github_commits_since_latest_release(**args) }

    let(:args) { {path_parameters: {user: "galtzo-floss", repo: "shields-badge"}} }

    it "does not raise error" do
      block_is_expected.not_to raise_error
    end

    it "returns a markdown badge" do
      expect(badge_method).to eq("[![galtzo-floss/shields-badge commits since latest release](https://img.shields.io/github/commits-since/galtzo-floss/shields-badge/latest?)](https://github.com/galtzo-floss/shields-badge/releases)")
    end

    context "with img_src_url for as" do
      let(:args) { {path_parameters: {user: "galtzo-floss", repo: "shields-badge"}, as: :image_src_url} }

      it "returns a badge image url" do
        expect(badge_method).to eq("https://img.shields.io/github/commits-since/galtzo-floss/shields-badge/latest?")
      end
    end
  end

  describe "::method_missing" do
    subject(:bad_method) { described_class.does_notExist }

    it "does not register bad klass" do
      block_is_expected.to raise_error(Shields::Errors::Error, "Invalid badge name must match (?-mix:[\\p{LOWERCASE-LETTER}\\p{DECIMAL-NUMBER}_]{1,511}): does_not (String) != does_notExist (Symbol)")
    end
  end
end
