class MakeAndroidKeystore < Formula
  desc "Generate Android signing keystores with 1Password-managed passwords"
  homepage "https://github.com/yannickpulver/make-android-keystore"
  url "https://github.com/yannickpulver/make-android-keystore/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "bef031aa399a2f7033b14b238946e30fabfc26e1779a458d1c9228405cd82c3b"
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
