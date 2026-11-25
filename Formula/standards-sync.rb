class StandardsSync < Formula
  include Language::Python::Shebang

  desc "Keep the code standards in sync without losing edits"
  homepage "https://github.com/sebastienrousseau/standards"
  url "https://github.com/sebastienrousseau/standards/releases/download/v0.0.15/standards-sync-0.0.15-unix.tar.gz"
  sha256 "e3e8d358a9d54df3eeb51a53449a2c59a2c5fcde063a7eb6afca7dd2128008c7"
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
