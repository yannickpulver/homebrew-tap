cask "slides" do
  version "2.0.6"
  sha256 "244f814621211ca500c065831c183eba58f8674df8ec57be7c7439792c410bd4"

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
