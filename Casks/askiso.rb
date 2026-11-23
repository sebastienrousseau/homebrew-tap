# Kept current by .github/workflows/bump-askiso.yml from the latest
# github.com/sebastienrousseau/askiso release.
cask "askiso" do
  version "0.0.8"

  on_macos do
    on_arm do
      sha256 "799bbecbe9d5de8b41a282d127095ca209e11f3cf695136b96254d225eb355c6"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "254a7cc919761bf120ca0dd52bdf818ea5b755901ef8fe7d90bc50d4dd293c46"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "18d2a73c4e2c2d048b3b65a253b7c99a1a263d991744d879d4b1e4ee9b88fa4f"
      url "https://github.com/sebastienrousseau/askiso/releases/download/v#{version}/askiso_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "97dce5b4d4449edf0909f68ff93e051877d9f01d1e98415810fdf393455f63f9"
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
