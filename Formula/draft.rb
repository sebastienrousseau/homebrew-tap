# typed: false
# frozen_string_literal: true

# Homebrew formula for the `draft` CLI from
# https://github.com/sebastienrousseau/draft
#
# On each release, update the `version` line and the four `sha256` lines
# from the release"s checksums.txt.
#
# Verify locally with:
#   brew install --build-from-source draft.rb && draft --version

class Draft < Formula
  desc "Turn research PDFs into grounded Markdown drafts (Claude/Ollama)"
  homepage "https://github.com/sebastienrousseau/draft"
  version "0.0.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "9145ec766ac46f6d409a9ab9e214a4d647677affe49fcae99bd142092a96bdf7"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "edc667f074f98dfa35f27f32a8362b8c95727638d146b1d5243781abe0cfaf7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "200a67b683dd42b795e629b9df9942fcc950542e4b6690e056be117cafe2a8e2"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "8ea1c162cc57d7707f2d5a6a7964e436a40ab147ea5ce308ffa2b0f26d10a3b3"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
