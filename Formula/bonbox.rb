class Bonbox < Formula
  desc "Manage your bonbox receipts, invoices and customers from the terminal"
  homepage "https://bonbox.io"
  url "https://registry.npmjs.org/bonbox/-/bonbox-0.3.0.tgz"
  version "0.3.0"
  sha256 "25fd19eeeebc3ec059a960c2749314a40477d0dfbbe04ce67b01ec4d5a225887"
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
