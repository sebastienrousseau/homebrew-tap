class StandardsSync < Formula
  include Language::Python::Shebang

  desc "Keep the code standards in sync without losing edits"
  homepage "https://github.com/sebastienrousseau/standards"
  url "https://github.com/sebastienrousseau/standards/releases/download/v0.0.10/standards-sync-0.0.10-unix.tar.gz"
  sha256 "4fda9a90150bf63dbf76aae0c3e374fbe0411d3acf81ae10c12e4aa0772b4576"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "python@3.15"

  def install
    rewrite_shebang detected_python_shebang, "bin/standards-sync"
    bin.install "bin/standards-sync"
    man1.install "share/man/man1/standards-sync.1"
    bash_completion.install "share/bash-completion/completions/standards-sync"
    zsh_completion.install "share/zsh/site-functions/_standards-sync"
    fish_completion.install "share/fish/vendor_completions.d/standards-sync.fish"
  end

  test do
    assert_match "usage: standards-sync", shell_output("#{bin}/standards-sync --help")
  end
end
