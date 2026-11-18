# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.47"

  on_macos do
    sha256 "90db8ce1bdf399927812f7f96155cbed3ad61c4da1952eebfd13e50b5ab74334"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "0f41d67d2f18601e25adcd2f517910c407252167e09a57ebb99ab304277e25cf"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "55d46c23f516ef18f73e5d59ac1330b0ef71032bd93503b2571adf16e9d181a6"
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
