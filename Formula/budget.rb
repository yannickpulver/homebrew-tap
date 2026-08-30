class Budget < Formula
  desc "Command-line client for the self-hosted budget app"
  homepage "https://github.com/yannickpulver/budget"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.1.0/budget-0.1.0-darwin-arm64.tar.gz"
      sha256 "57d7d09d9b1224e54d86cb42dd1767625b8faa901cdc17e0de964272777706e8"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.1.0/budget-0.1.0-darwin-x64.tar.gz"
      sha256 "d0de9470346169dd9aa1c67a7e790b8bae8d7e9dc8d6fa30af64fa28017ed73f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/budget/releases/download/v0.1.0/budget-0.1.0-linux-arm64.tar.gz"
      sha256 "83905841f14dfde240c9b0d59c7a9f986601d234f0931c18ac1cb4792c152270"
    end
    on_intel do
      url "https://github.com/yannickpulver/budget/releases/download/v0.1.0/budget-0.1.0-linux-x64.tar.gz"
      sha256 "62ecf858ca07d7c7399c2f77c0160372a1b29bd1755d0b89a811b2ba15f6c5f5"
    end
  end

  def install
    bin.install "budget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budget --version")
  end
end
