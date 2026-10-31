cask "raw-viewer" do
  version "0.5.10"
  sha256 "a3c00ebe435ef5d8af77480f456c87942e0bf78597ea4c9b8b6d3e252f500c73"

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
