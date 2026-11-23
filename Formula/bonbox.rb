class Bonbox < Formula
  desc "Manage your bonbox receipts, invoices and customers from the terminal"
  homepage "https://bonbox.io"
  url "https://registry.npmjs.org/bonbox/-/bonbox-0.5.0.tgz"
  version "0.5.0"
  sha256 "070ab17031dc2849a170d95735b8f8ce712bbf4f3e09ac7c7c09691c794b4778"
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
