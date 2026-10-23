# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.40"

  on_macos do
    sha256 "245b5b6ba5a18f8c5f127d6203705e3e86b53ff8e5d016c4a53188f4b005fd15"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "dd37c1552fc53da9d14b0f314207c35ca0115210f57b6b5fc846271988feb118"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "0aa7533baa28e49c5f627237cf1c28c3ea4702df464a15a932c233a3a069026b"
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
