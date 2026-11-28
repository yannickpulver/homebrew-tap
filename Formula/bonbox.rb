class Bonbox < Formula
  desc "Manage your bonbox receipts, invoices and customers from the terminal"
  homepage "https://bonbox.io"
  url "https://registry.npmjs.org/bonbox/-/bonbox-0.5.2.tgz"
  version "0.5.2"
  sha256 "3dc4b3ca40a8b662a30e3fa09e8fb5535bfffc42792af4648587b5a7fbbd86eb"
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bonbox --version")
  end
end
