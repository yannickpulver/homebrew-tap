class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.4/budget-0.3.4-darwin-arm64.tar.gz"
      sha256 "270298a56531cb57ad7dc6355270ccdb6326e5c79092f0a7cae6e12f9fee6947"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.4/budget-0.3.4-darwin-x64.tar.gz"
      sha256 "07457e870cfc7aea704a92d405017a28bbf2b06653d93e0c83f88839d26685e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.4/budget-0.3.4-linux-arm64.tar.gz"
      sha256 "92eecefff903ce3e6bdb9603b49883246c9ba94811bbe7f14a283747aacbf301"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.4/budget-0.3.4-linux-x64.tar.gz"
      sha256 "2f97dcc75334e38c362e94f31aba029d03f939de1b263c02984ff5561fa58cb4"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
