# typed: false
# frozen_string_literal: true

# Homebrew formula for the `draft` CLI from
# https://github.com/sebastienrousseau/draft
#
# Kept in sync with the latest draft release by .github/workflows/bump-draft.yml
# (it rewrites the `version` and `sha256` lines). That workflow needs a
# TAP_SIGNING_SSH_KEY repository secret so its commits are signed.
#
# Verify locally with:
#   brew install --build-from-source draft.rb && draft --version

class Draft < Formula
  desc "Turn research PDFs into grounded Markdown drafts (Claude/Ollama)"
  homepage "https://github.com/sebastienrousseau/draft"
  version "0.0.15"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "234dae21b7bda42df55f1aa55a3b1e4d87d14f94918217cd1dbe36ffcc186c08"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "cd5814f731db24e21a2169ccab3dab789bf5b813e12f7ea0b762cd084852ae79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "de1b0d5c255f3c5828d5eb9289ecf5db4cb0becf15f5da4a364668fcb111b8da"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "609a524a8057073ed1b8e49ad5931b0a529077c77eb9068c6db3c4db0fa128f2"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
