class MakeAndroidKeystore < Formula
  desc "Generate Android signing keystores with 1Password-managed passwords"
  homepage "https://github.com/yannickpulver/make-android-keystore"
  url "https://github.com/yannickpulver/make-android-keystore/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bb6c5030e66f1685a371e51f85e92a5b296e4214cab0c0273996fa492e97057c"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "make-android-keystore"
  end

  def caveats
    <<~EOS
      Also requires at runtime:
        - a JDK (keytool)
        - the 1Password CLI, signed in: brew install 1password-cli
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/make-android-keystore 2>&1", 1)
  end
end
