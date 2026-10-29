cask "copier" do
  version "2.0.10"
  sha256 "e11870085af2db727958d29450877696adf9152f2132438f949e48c338a4999b"

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
