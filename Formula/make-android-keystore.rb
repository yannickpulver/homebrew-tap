class MakeAndroidKeystore < Formula
  desc "Generate Android signing keystores with 1Password-managed passwords"
  homepage "https://github.com/yannickpulver/make-android-keystore"
  url "https://github.com/yannickpulver/make-android-keystore/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "855f85a2d463368ad8cf6488bcd15c7b23ab9d7c963748f012af024c9558879f"
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
