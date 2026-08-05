# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.32"

  on_macos do
    sha256 "ac11af5e81f17e088ea2ab0672d24e84fd1c1c2844f416129d91e91ef4206733"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "ebe6135fc60876688f31c6557ef303f829f8a781cc500cacbec2c0d3636f3081"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "0677e64d586b128103737010f6f468e0ab1ab5e30840d21e96c29b43acf39fc7"
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
