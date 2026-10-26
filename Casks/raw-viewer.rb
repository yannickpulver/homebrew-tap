cask "raw-viewer" do
  version "0.5.7"
  sha256 "736fec39a6dd6ab92fd80baac407a0b8e1d70397637550ec9692595e2d5efe54"

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
