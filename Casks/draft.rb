# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.37"

  on_macos do
    sha256 "cd3c989387577d772988a3a2bf391e2758f67ba47bd8b6789b286aa9225a1d6e"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "a41bf6897feec76ffff3601fcfdf311aaf1d42b5d562d3892b9b51dfe5f226d2"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "154b3c849c808855f6838f510ca40e6e1d8dbc0d062afe33cb9137370b975475"
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
