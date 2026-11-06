# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.43"

  on_macos do
    sha256 "32fd717c9274cfec6358ff52507799a726644fbde0a783c952b7eaa463a43c62"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "85607e2f890ab33d761ba7f6cfd2974abfddec9af256837cd7d32d259faae571"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f69b0450c414c9778804d8cecfbb321d9565aa66bad53829037785e4342f9a41"
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
