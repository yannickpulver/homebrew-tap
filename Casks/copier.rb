cask "copier" do
  version "2.0.13"
  sha256 "c466aee020098efbde6aaf516623625e23b8b633b65c55eba37fdc69b630906c"

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
