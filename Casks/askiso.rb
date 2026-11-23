# Kept current by .github/workflows/bump-askiso.yml from the latest
# github.com/sebastienrousseau/askiso release.
cask "askiso" do
  version "0.0.6"

  on_macos do
    on_arm do
      sha256 "7e79013810a1dde3e51daa55455ee5afeec8bcf2f30cac5b0fb22387ef8984b5"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "81a3bef6abe66540c0e7d7e8ba73dc106930c83f6c9255db888bf26b678d19d6"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "fe774359c5607287211dcdbcb85e63d3fb770611b3a951fa181fa21910b98776"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "6c5324aedb42734297cde9085ed34eac0ca7a3082c7c8e1f08679c000d0f7f8b"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_linux_amd64.tar.gz"
    end
  end

  name "AskISO"
  desc "ISO 20022 reference tooling for the terminal, an editor and an AI assistant"
  homepage "https://askiso.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "askiso"
  binary "askiso-mcp"
  binary "askiso-lsp"
  binary "askiso-server"

  caveats <<~EOS
    AskISO ships no ISO 20022 specification content. Download the message sets
    you need from https://www.iso20022.org/ then run:

      askiso catalog add <downloaded.zip>

    Search, lint, generate and MT translation work without any download.
  EOS
end
