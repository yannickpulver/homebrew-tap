cask "slides" do
  version "2.0.5"
  sha256 "afb3d5bd2093d4518dba42a268c1548cd11244b9b30666cdc740121a612f6d92"

  url "https://github.com/yannickpulver/slides/releases/download/#{version}/Slides-#{version}.zip"
  name "Slides"
  desc "Photo and video carousel editor"
  homepage "https://github.com/yannickpulver/slides"

  # Sparkle updates the app in place, so brew shouldn't try to as well.
  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Slides.app"

  zap trash: [
    "~/Library/Application Support/Slides",
    "~/Library/Preferences/com.yannickpulver.slides.plist",
    "~/Library/Saved Application State/com.yannickpulver.slides.savedState",
  ]
end
