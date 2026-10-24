# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.42"

  on_macos do
    sha256 "b9700a09171e72870fd0178e8a35474b20fd1222e9234d5cb12880cbcc20f43f"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "ac728c12d34c9b4879e02ef6479080b3c1826e3bd135cc799b62609797d1645d"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "6c523b0358dd34f7c74f7bd371830bf6e02be243b9b068329cc39545697da053"
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
