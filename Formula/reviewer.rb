class Reviewer < Formula
  desc "Local CLI that groups a PR/MR diff with Claude Code and serves a review UI"
  homepage "https://github.com/yannickpulver/reviewer"
  url "https://github.com/yannickpulver/reviewer/releases/download/v0.2.4/reviewer-0.2.4.tgz"
  sha256 "122a59edc3bc34f117f24daf655640c3c23d2b797c3a5f3e70ea4ba31e4d955c"
  version "0.2.4"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "reviewer", shell_output("#{bin}/reviewer --help")
  end
end
