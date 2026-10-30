cask "copier" do
  version "2.0.11"
  sha256 "774e6011463237a82610cb9a46e85e8c8908194ff9a2291e8504fdfebfb2998a"

  url "https://github.com/yannickpulver/copier/releases/download/v#{version}/Copier-#{version}.zip"
  name "copier"
  desc "Back up photos and videos from SD cards to NAS or SSD"
  homepage "https://github.com/yannickpulver/copier"

  # Sparkle updates the app in place, so brew shouldn't try to as well.
  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Copier.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.copier.plist",
    "~/Library/Application Support/copier",
    "~/Library/Saved Application State/com.yannickpulver.copier.savedState",
  ]
end
