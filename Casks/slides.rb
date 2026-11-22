cask "slides" do
  version "2.0.16"
  sha256 "8db6ae1eec15bc1dedd028ba664e5169f96ef221f56e839b50334b6372dca69b"

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
