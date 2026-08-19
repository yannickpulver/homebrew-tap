class Reviewer < Formula
  desc "Local CLI that groups a PR/MR diff with Claude Code and serves a review UI"
  homepage "https://github.com/yannickpulver/reviewer"
  url "https://github.com/yannickpulver/reviewer/releases/download/v0.2.7/reviewer-0.2.7.tgz"
  sha256 "a30f905de6edaecd54e05d11102a3ffb8f858f376643369d53cd557250283863"
  version "0.2.7"
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
