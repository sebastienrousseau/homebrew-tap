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
  version "0.0.13"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "92dd196eda2d2a6e157c517bd0f06ef825319eba4977ff9dc9bd452404b7c4b8"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "a53d09ae0e592ed5097ae4a3a584de2ae613ef1f7f4cbb967fca01c5067ce6cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "c0ab47efc5bc8fe3303b5c98421ea4af99e29d890d2899e46fdf5bd6105e6298"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "2bdfaba3fc67d96511800a47a4c705d5f90d4da1c582d5ed43cc9ec630525382"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
