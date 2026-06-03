cask "raw-viewer" do
  version "0.3.9"
  sha256 "5d17e3a062fd682dd3be2329dce6ffeaf6f94b31c67cd59fc1b9e952cb8fa4a3"

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
