# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.45"

  on_macos do
    sha256 "9a144dacac409341b469d48ee742630b9bdd8c76e4f1a4d9b7f276b9cefaf83f"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "ce5b9a7226fb5515825647ec42985d5b3f4e9334c6a518e9eb0829c65789f885"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "d4ea5d81ee7eb5b8d87f2634a20827e279f68bfdb41f2d1e113ef076a5f77853"
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
