class MakeAndroidKeystore < Formula
  desc "Generate Android signing keystores with 1Password-managed passwords"
  homepage "https://github.com/yannickpulver/make-android-keystore"
  url "https://github.com/yannickpulver/make-android-keystore/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "aa7c4f576283b95152d8c2171f4b3a988660bb79935972f0f953ab7bd2b23671"
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
