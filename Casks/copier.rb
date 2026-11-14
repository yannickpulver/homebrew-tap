cask "copier" do
  version "2.0.16"
  sha256 "79119ad444c8061cd38ff8beca7e2320dfa9569bcb0da9187178c73e015c34f8"

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
