# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.50"

  on_macos do
    sha256 "a5e4ebcc248b0bd7270a2fcf1e59821cf58d42e987624a0ebdab7f52bd39aca6"

    url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_universal.pkg"
  end
  on_macos do
    pkg "draft_#{version}_universal.pkg"

    uninstall pkgutil: "com.draftlib.draft"
  end
  on_linux do
    on_arm do
      sha256 "aad18c2a94eb4030c272291aa1e3aea1f922935dfd957d40bfbb98922f1249b2"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "c9643ec6a82e4f540b9b1abb4cbc63566c816c195cb73335cfee6c3d0ed4c58e"
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
