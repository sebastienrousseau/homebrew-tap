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
  version "0.0.10"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "2518d55b347d1030a7fd38499305eb3d9eb766cf66735ce603a838d8c77803e3"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "26eaf3751bf419fef898616526adf0d09a33e2a6704f16c3a9a38d13e7f9fe4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "5a15736b85532c436a2de6daea0d46fd17531cd9241ee15de9b9c5adf2aad50a"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "ad82cd9f02d766de005c8f0f07d8392c5819cc9b2a2f6ea8bdfa87fe14b7528b"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
