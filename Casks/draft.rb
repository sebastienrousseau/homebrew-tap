# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.29"

  on_macos do
    on_arm do
      sha256 "68df54eda0405ca201216a41fed9b895246e1505be5979648ce8851a0276c42a"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "f22ea723eaa2ce82bfa936a7902fb98bee5609f9358956f7b76d285574e751fa"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "9da7893c3015a1b77e075ac11206e57346beb13ed96717b8e380981a8bb8d161"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "c535b431e9d98f0f829e1a11a9a70ac70f3dc5e22f8c6894cfa1e0a48a20b30e"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
    end
  end

  name "draft"
  desc "Turn research papers into grounded Markdown drafts"
  homepage "https://github.com/sebastienrousseau/draft"

  binary "draft"
end
