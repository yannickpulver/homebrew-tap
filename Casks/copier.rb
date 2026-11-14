cask "copier" do
  version "2.0.17"
  sha256 "fa629ec1302b4fa85ee458f289097ada023ee57cd85fc979da20bff96bf9ec3f"

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
