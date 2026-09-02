cask "raw-viewer" do
  version "0.4.4"
  sha256 "bf74ae4148313b21cdbfdfeb56dfe0cc4fcda4e1abc7b7663f82f387bae2dfaf"

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
