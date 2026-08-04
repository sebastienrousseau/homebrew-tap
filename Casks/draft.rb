# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.31"

  on_macos do
    on_arm do
      sha256 "5c4fa5021385d12b3dd8c155abe617744f42078a329e829f9f750499b115f3db"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "478af9053d8cbbaeeb534c98dffe83c1bb38bffbbdb83ca8b137ad4c659e9555"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "7bd759e4c44ccff0dd021f2378dd6a0fa9e8f2147e8a00beebd4b97120aedc18"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "43c2a72b724ac8f53b176ea8e1ce344c54e02290c751c22e26e8481d6c18f9a6"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
    end
  end

  name "draft"
  desc "Turn research papers into grounded Markdown drafts"
  homepage "https://github.com/sebastienrousseau/draft"

  binary "draft"
end
