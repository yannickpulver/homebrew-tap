cask "raw-viewer" do
  version "0.5.7"
  sha256 "98abd603c29bfafe0db3dcd0b8caf7d272c04a7de042e47287026fe2af5f7f07"

  url "https://github.com/yannickpulver/raw-viewer/releases/download/v#{version}/RAW-Viewer.zip"
  name "RAW Viewer"
  desc "RAW image viewer"
  homepage "https://github.com/yannickpulver/raw-viewer"

  depends_on macos: ">= :sequoia"
  auto_updates true

  app "RAW Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.raw-viewer.plist",
    "~/Library/Application Support/RAW Viewer",
  ]
end
