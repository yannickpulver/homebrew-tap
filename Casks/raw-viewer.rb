cask "raw-viewer" do
  version "0.5.17"
  sha256 "1efddb0e88eaf1394008f27fd9bd7fa8af06cd854eac3f30ffb997fd9b80ab0e"

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
