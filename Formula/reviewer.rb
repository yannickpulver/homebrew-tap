class Reviewer < Formula
  desc "Local CLI that groups a PR/MR diff with Claude Code and serves a review UI"
  homepage "https://github.com/yannickpulver/reviewer"
  url "https://github.com/yannickpulver/reviewer/releases/download/v0.1.3/reviewer-0.1.3.tgz"
  sha256 "e9adab734ad19be2339f32157af3a91ec5caaac9ecaab383a8c1fa2af0cf19a2"
  version "0.1.3"
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
