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
  version "0.0.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_arm64.tar.gz"
      sha256 "2947bedf05d7e1805e0ba840218f9b5313e37696f0edefa6b4576143d9b54ef9"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_darwin_amd64.tar.gz"
      sha256 "ee9d41e3c5e97da1b96e3a29002add845c6695df59fca87f2126e323855394fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_arm64.tar.gz"
      sha256 "8cec7a7914bf8871b9437e48f3bfb8a727128d9ddc73e297ddad73830a637957"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/draft/releases/download/v#{version}/draft_#{version}_linux_amd64.tar.gz"
      sha256 "f61aa64809b4a3b5dddedb3f22892ee8de20a48ede9fe5b3adf394fae86a8857"
    end
  end

  def install
    bin.install "draft"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/draft --version")
  end
end
