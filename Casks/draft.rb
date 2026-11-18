# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.48"

  on_macos do
    sha256 "16e760f05eb185e0b73eae5a5a4a3d80baa6a1bc6141627d707165c6d641462a"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "d6a44c0248ec9b4222f4163366272b376bc0d7cc6af33183683ffbcc64f1f575"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "777350ee89f59438c52173616ac2a19217c9d0e17a0d9b7fca929d506fe078ed"
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
