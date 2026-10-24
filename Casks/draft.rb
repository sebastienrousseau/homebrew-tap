# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.41"

  on_macos do
    sha256 "dea6ae54b5edf4d98df2f68673e3af5da8807dbd0a7782e15746110753e0af09"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "1adf325bc073808e66fec29eedfec75292d2292c75d531f8b82ef2e429aa40ee"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "5dab31631e5fca2aecf183400dbe21751afae6dc7be36b3abe08ab7f25386ee6"
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
