class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.3/budget-0.3.3-darwin-arm64.tar.gz"
      sha256 "95af09e370fab9432caaab471adf1f64dfd33303cd4c5a05f6327c503d50c7af"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.3/budget-0.3.3-darwin-x64.tar.gz"
      sha256 "4948fc34d8db19df67bfd8a24e2427dfce777c8b8933a2c8fc8cc4f0c626d66c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.3/budget-0.3.3-linux-arm64.tar.gz"
      sha256 "66418208feffdab226f138cddbf9eb463f84a8cf101e678b703f8147d9e1fcf2"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.3/budget-0.3.3-linux-x64.tar.gz"
      sha256 "dab3f2b5b2cf1feb878dbd0bdd37fc8fc2450ef1b67834fde8c241d975567d86"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
