class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.5/budget-0.3.5-darwin-arm64.tar.gz"
      sha256 "48117a6c237bad8e38a7ce39a52a0e1a27c0058f1c4f6ebf2c14e3b34f619c34"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.5/budget-0.3.5-darwin-x64.tar.gz"
      sha256 "6d24b24b7bc8e012c2c07005aad045fbc31d82b8a49d5b300d3268bb5bba8268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.5/budget-0.3.5-linux-arm64.tar.gz"
      sha256 "31b327a09943dd8b3caef41be3ee9c6816f23455681e5c382c883fa34ce503d1"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.5/budget-0.3.5-linux-x64.tar.gz"
      sha256 "54ccc92ed3b434a255f883c23a3e068bc59d3da0fccc626443ecf972a87b719e"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
