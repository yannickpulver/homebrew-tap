class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.1/budget-0.3.1-darwin-arm64.tar.gz"
      sha256 "d85fc46b01523a1fc35b237baf4d7a06fa5074256898fc5a6fce1347df5ecef4"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.1/budget-0.3.1-darwin-x64.tar.gz"
      sha256 "f1ac29f3811c5d546aa40eedda9a1669e8ac3a3d94d866de790d7e39b25015e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.1/budget-0.3.1-linux-arm64.tar.gz"
      sha256 "f2cc190bdef4aa73dde7730ead7ce489d826f0f067d7542a6dc92f6fff67cb16"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.3.1/budget-0.3.1-linux-x64.tar.gz"
      sha256 "d9eed2e28cca8f35312687da5c2c90fd30e39b267315848841c84642e60baa25"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
