cask "slides" do
  version "2.0.1"
  sha256 "23ad27315d6eb14c23748f2171f0100990ac8f92d473dccb1958c17e1520dc0e"

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
