cask "raw-viewer" do
  version "0.3.5"
  sha256 "7239278580da65a4ed96825e44a4e4bb1e8f9c3cc6b42cf130123e9d1f3a76c0"

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
