class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.1/budget-0.2.1-darwin-arm64.tar.gz"
      sha256 "88f599a517199bad06ac5278341807bfaebe6585ea50901765df58546c4c7a46"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.1/budget-0.2.1-darwin-x64.tar.gz"
      sha256 "067062c81bd28a7878c6fc402def6604eda5ba486665cccfeb61bfb8938bce6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.1/budget-0.2.1-linux-arm64.tar.gz"
      sha256 "937d5a375ecfd96be34dcb2e8f8029d16bbd0d5f343e86deb1fbf8d179ffe985"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.1/budget-0.2.1-linux-x64.tar.gz"
      sha256 "63ee44d832ece61bd289367c81940e7d7862e202382719204558a308f2796baa"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
