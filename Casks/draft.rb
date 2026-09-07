# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.35"

  on_macos do
    sha256 "885a3ec03565f9a144db34ca50b85b61171a3adf9c973e03781778fb4f1aaee7"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "0cba40bd9ff8f469abb15ca2b6c15f54785ae5bc1380c880a001695ebbbde8b9"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "b87c5e57719cc2e4e5a168e4ec7e247a836cf8890d08e0e8a9fd4af94217dd52"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
    end
  end
  on_linux do
    binary "draft"
  end

  name "draft"
  desc "Turn research papers into grounded Markdown drafts"
  homepage "https://github.com/sebastienrousseau/draft"
end
