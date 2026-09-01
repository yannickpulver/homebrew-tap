class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.0/budget-0.2.0-darwin-arm64.tar.gz"
      sha256 "c7f32504bcfc761aedd003fd7cefa47153463de59182c3c4f640fb1624760fa1"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.0/budget-0.2.0-darwin-x64.tar.gz"
      sha256 "63753ed8de068a2e282a0d80ccfa249745f680b461d8bed272fea6c22f8b8edb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.0/budget-0.2.0-linux-arm64.tar.gz"
      sha256 "cc26cb5abf3389261be26d9eb969e4bb2381daf15b791d150dc5f408c9cc42f2"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.2.0/budget-0.2.0-linux-x64.tar.gz"
      sha256 "822c83e40a13c6baabc4069b7fd8bb31aa8fe44b4de2cf2b37ac7bc60505797d"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
