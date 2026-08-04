# This file is maintained by .github/workflows/bump-draft.yml.
cask "draft" do
  version "0.0.30"

  on_macos do
    on_arm do
      sha256 "ff1f4a9c8b007bb8e933b6251c495edbb2e0ca035360a0a0dab4ae1157f1326d"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "03841c7994be1b113325d40170601575e128681bf28cd1a879fde85429b45cf1"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "42a751703d27d7641803f8a742fe43b6663e4813b7fcf3d643a6061654229780"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "7174faa9833d6c3bd406de0c71022fe2f9944c353e712ba2f7af3180babfdba4"
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
    end
  end

  name "draft"
  desc "Turn research papers into grounded Markdown drafts"
  homepage "https://github.com/sebastienrousseau/draft"

  binary "draft"
end
