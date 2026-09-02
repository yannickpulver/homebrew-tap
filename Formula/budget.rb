class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.0/budget-0.3.0-darwin-arm64.tar.gz"
      sha256 "45f0929be5b8bcd3281b1a0c9a23de1172d20f7ad6d1f67fe8c478d5a280e866"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.0/budget-0.3.0-darwin-x64.tar.gz"
      sha256 "6305320b9fe0c0f20c4a3db6df37e761222488919f3fa3c1661384aa0a592c7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.0/budget-0.3.0-linux-arm64.tar.gz"
      sha256 "1923a0fda6051f3183738cb3121edee1cf36321b4241279fd9dbc547e34016d5"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.0/budget-0.3.0-linux-x64.tar.gz"
      sha256 "ee365ddfba99dedee938e61398d045e960da0b66cbec2e4622e15d2dbef29ca6"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
