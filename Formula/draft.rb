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
  version "0.0.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "fd6f4267262df2c27c74a45287a60fa51ea53bd48a4f4cf164e6774811b3e70a"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "cd2aa114af2347f5c288d59650c981dd8e5a055b688f7cb2ef54cf6c7c590819"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "9b3367edb2d1acdead37c217b40b9d9b5cc08b9476b39bd107b758678458562b"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "d1c115ece1db4484516f981435a495cfbccd18ae013224143ffdf4d750d8da1e"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
