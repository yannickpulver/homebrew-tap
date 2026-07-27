class Reviewer < Formula
  desc "Local CLI that groups a PR/MR diff with Claude Code and serves a review UI"
  homepage "https://github.com/yannickpulver/reviewer"
  url "https://github.com/yannickpulver/reviewer/releases/download/v0.2.1/reviewer-0.2.1.tgz"
  sha256 "2e437724a640005c943e386229e175f59fbc5b9bacd6915d37d2f464a758b31e"
  version "0.2.1"
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
