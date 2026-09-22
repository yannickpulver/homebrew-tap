cask "raw-viewer" do
  version "0.5.4"
  sha256 "e741d3eb896bd27adae93ebe5958597a4f8aebeeda3422ea86e34f1f715022d9"

  url "https://github.com/yannickpulver/raw-viewer/releases/download/v#{version}/RAW-Viewer.zip"
  name "RAW Viewer"
  desc "RAW image viewer"
  homepage "https://github.com/yannickpulver/raw-viewer"

  depends_on macos: ">= :sequoia"

  app "RAW Viewer.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.raw-viewer.plist",
    "~/Library/Application Support/RAW Viewer",
  ]
end
