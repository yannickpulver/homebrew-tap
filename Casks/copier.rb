cask "copier" do
  version "1.5.4"
  sha256 "e11f427ab70027e54ac5ee0f47efff86eff5b173c369cab67a853124d13d3fac"

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
