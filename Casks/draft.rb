# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.46"

  on_macos do
    sha256 "3f0b8563531cbe69584043ed5c970cd387b00ee730db6cfd46bf533ae3efc728"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "61ceaf0b8050b7313671514487fa4c277485d6f8cf53966c4625c7a2af0df61c"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "bcb42978766c7e02f9d41f017ae8dfab8c8785e849645aedab4f0b6677cd2f86"
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
