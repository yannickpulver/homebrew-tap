cask "raw-viewer" do
  version "0.3.7"
  sha256 "90adaaa81f6af00c294a6c5c9a4bca14192bc5c0e41c890fb8dfd90913ce985b"

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
