cask "slides" do
  version "2.0.9"
  sha256 "eab926bf3adeae3b2706542c23d4fa1774ebf19859c33173059788d087709c09"

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
