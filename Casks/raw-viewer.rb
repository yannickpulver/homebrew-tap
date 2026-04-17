cask "raw-viewer" do
  version "0.3.3"
  sha256 "fe6a85e6495d115e1f9f1d517776823bf4a2cfa74d1796be27bde66c75327b55"

  url "https://github.com/yannickpulver/raw-viewer/releases/download/v#{version}/RAW-Viewer.zip"
  name "RAW Viewer"
  desc "RAW image viewer"
  homepage "https://github.com/yannickpulver/raw-viewer"

  app "RAW Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.raw-viewer.plist",
    "~/Library/Application Support/RAW Viewer",
  ]
end
