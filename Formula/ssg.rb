# typed: false
# frozen_string_literal: true

# SPDX-License-Identifier: Apache-2.0 OR MIT
#
# Homebrew formula for SSG, Static Site Generator.
#
# Rendered from packaging/homebrew/ssg.rb in static-site-generator by
# scripts/render-packaging.sh, which fills in the version and each
# archive's SHA-256 at release time. Each release attaches the result
# as ssg.rb, and github.com/sebastienrousseau/homebrew-tap copies it,
# so users install with:
#
#   brew install sebastienrousseau/tap/ssg

class Ssg < Formula
  desc "Fast, SEO-optimised, WCAG-compliant static site generator"
  homepage "https://github.com/sebastienrousseau/static-site-generator"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/sebastienrousseau/static-site-generator/releases/download/v0.0.69/ssg-v0.0.69-aarch64-apple-darwin.tar.gz"
      sha256 "aec3320300e3227438e7afac2f752401a627ae91727b975a384982e89410ec0e"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/static-site-generator/releases/download/v0.0.69/ssg-v0.0.69-x86_64-apple-darwin.tar.gz"
      sha256 "e0b54e785226f7d6a4e1e797e25ae2decfbd4dbdb557e2070b7dfca711b2aaf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sebastienrousseau/static-site-generator/releases/download/v0.0.69/ssg-v0.0.69-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b706241f5bf504325e994c7f8b9355dc19e8e22dcad4ca275d1c21e6be5bb3d4"
    end
    on_intel do
      url "https://github.com/sebastienrousseau/static-site-generator/releases/download/v0.0.69/ssg-v0.0.69-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8b1bd72bc607a58ddb57299fac0107da6cc5b08ed4723b79b8f337f0248ba46"
    end
  end

  def install
    bin.install "ssg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ssg --version")
  end
end
