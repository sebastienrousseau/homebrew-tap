# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.33"

  on_macos do
    sha256 "ee3ce0bfe61f88fa222ae3bc73b5e5368b70c650a49111dd4810275b1f7ea5b0"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "ef26f94dee88924e8c351a7a44486378f97909c83dd6a3011c653308ca7aa6b2"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f278fbb9d76b4cfd867df692ae115e8199e9a8b68b3ab974c4649a501e9bf480"
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
