# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.34"

  on_macos do
    sha256 "81b629c52b50bd61618f65791702f1611a30f890f3d687cfc7220f2f03eb0342"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "e79a705b879e097000400eec5d9fba1297eb1d42f120b5cf7988b42285bbe640"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "6a3ddf1d2f7b7c012a96f61e9b99ced7cb87dd1a6fbbf2179aa1658900a6a500"
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
