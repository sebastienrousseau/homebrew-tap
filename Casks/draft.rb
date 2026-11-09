# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.44"

  on_macos do
    sha256 "86903253405174c9f05376e650f20a1c3b5806e47961b39345b37da7876ac3c4"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "1e8abcfab8c4d45bd32b3ed66f3f611aadd436a1ff7f07cfb0456bbaaad61e84"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "c2aa3f97e87d7db577fe2672da7d14078c7505ab581f3504c2fa7e16df082597"
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
