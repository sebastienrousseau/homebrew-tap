# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.38"

  on_macos do
    sha256 "cb67e08d6679d0651be97078ebceffb008b65c0eac96aa77c3a6d52021f41e34"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "f23834867da94e90ea89af91274b685cf261d1e5ce8ffee12d42b73168b8f685"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "f848a1bf15c3554274d99ddad374647678a45e3e09571e3bed61b8e968e3fbca"
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
