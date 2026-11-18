# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.49"

  on_macos do
    sha256 "5d9cabc7b53c2d038540206425b114582bbc8d741ac95635f6123117a28f5e46"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "7a03b266498ddbe5b3579bbb7a41105d4d664b7fe201422d1e05d1a9c55bed47"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "a691221da4d7c4ba083c0139949857d73293eeef155370ed7646aad02b455bbc"
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
