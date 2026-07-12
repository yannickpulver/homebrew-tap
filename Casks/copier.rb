cask "copier" do
  version "1.5.1"
  sha256 "96e764e60005c938e78bd24582f42907c68d3e1445a4dbb8ab4cb21bf2c5fd57"

  url "https://github.com/yannickpulver/copier/releases/download/v#{version}/copier-darwin-arm64-#{version}.zip"
  name "copier"
  desc "Electron copier app"
  homepage "https://github.com/yannickpulver/copier"

  depends_on arch: :arm64

  app "copier.app"

  zap trash: [
    "~/Library/Application Support/copier",
    "~/Library/Preferences/com.yannickpulver.copier.plist",
    "~/Library/Logs/copier",
  ]
end
