class Reviewer < Formula
  desc "Local CLI that groups a PR/MR diff with Claude Code and serves a review UI"
  homepage "https://github.com/yannickpulver/reviewer"
  url "https://github.com/yannickpulver/reviewer/releases/download/v0.2.8/reviewer-0.2.8.tgz"
  sha256 "de5f9ef7d70e589d0ebb2104b323299a758878910db03a16907cc66445761ddf"
  version "0.2.8"
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
