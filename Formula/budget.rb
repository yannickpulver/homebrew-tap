class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.2/budget-0.3.2-darwin-arm64.tar.gz"
      sha256 "1c840541d18563f7b10ccf93308af07f882ca21e499f872cf9eab3b21d07b9c1"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.2/budget-0.3.2-darwin-x64.tar.gz"
      sha256 "d5cfffa028143659e6a1353835b2fa114d2aaa369d937fdd70eea8bd760e2189"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.2/budget-0.3.2-linux-arm64.tar.gz"
      sha256 "8c847605ede444e0b86d98160ddadcc592f63c5c5409f3a164ee96033d9e9c04"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.2/budget-0.3.2-linux-x64.tar.gz"
      sha256 "8e33718afb27bba23819d0e6556a0f63a0b56a49ed41b8e6d00aa045e7807ce2"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
