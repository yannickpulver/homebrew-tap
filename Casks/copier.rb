cask "copier" do
  version "1.5.3"
  sha256 "1e8fb431eeb01d125ddde50f169573f5206b93038a252fff4f4385b83b9333ce"

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
