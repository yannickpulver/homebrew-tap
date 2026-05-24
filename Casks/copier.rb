cask "copier" do
  version "1.3.2"
  sha256 "3b786555df53bea8d57de4e5d65eb8752104f2c26920b25bfc6d129a8073617f"

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
