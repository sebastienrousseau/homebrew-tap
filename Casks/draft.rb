# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.39"

  on_macos do
    sha256 "9ded910664a652048d3694b2b07c774b0e389bcd89e7d709ff4801169db1060b"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "70c078f5329551da797648bf78565321a6ec96d6c6a9203581623ae3d3152a65"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "cf304fbc660a24dd215107abd7c494c9d1394e6f56dbe283061c4064612d03fc"
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
