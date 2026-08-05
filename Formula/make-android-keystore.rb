class MakeAndroidKeystore < Formula
  desc "Generate Android signing keystores with 1Password-managed passwords"
  homepage "https://github.com/yannickpulver/make-android-keystore"
  url "https://github.com/yannickpulver/make-android-keystore/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "fda923689fb256eaa22e39ff8c26855a4817afd7066170e2468d4409ed7ee420"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "make-android-keystore"
  end

  def caveats
    <<~CAVEATS
      Also requires at runtime:
        - a JDK (keytool)
        - the 1Password CLI, signed in: brew install 1password-cli
    CAVEATS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/make-android-keystore 2>&1", 1)
  end
end
