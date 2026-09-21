class Blatt < Formula
  desc "Command-line client for Blatt notes"
  homepage "https://github.com/yannickpulver/blatt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yannickpulver/blatt/releases/download/cli-v0.1.1/blatt-0.1.1-darwin-arm64.tar.gz"
      sha256 "097961e3931ae68f9baad21d8975c605cab93918211885c6d10d594c7b03f12b"
    end
    on_intel do
      url "https://github.com/yannickpulver/blatt/releases/download/cli-v0.1.1/blatt-0.1.1-darwin-x64.tar.gz"
      sha256 "07a89ae4e22fd3c83cf8954cbd1e3e1bb67d95d447de5fc3773da6003b8212b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yannickpulver/blatt/releases/download/cli-v0.1.1/blatt-0.1.1-linux-arm64.tar.gz"
      sha256 "be30b242b43c0222559f1d71d3e10f1f623845d39452b6c6d8e420e8212349bd"
    end
    on_intel do
      url "https://github.com/yannickpulver/blatt/releases/download/cli-v0.1.1/blatt-0.1.1-linux-x64.tar.gz"
      sha256 "859b6ead69019d5605898bf1771b6ea0314454951ff638459bb77a5f38f5943c"
    end
  end

  def install
    bin.install "blatt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blatt --version")
  end
end
