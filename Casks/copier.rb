cask "copier" do
  version "1.4.0"
  sha256 "99f10c75d91ba4256db2954c94bf61b28800ced5646101f69032f6c525a64c3d"

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
