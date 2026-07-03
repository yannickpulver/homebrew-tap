cask "lasso" do
  version "0.0.1"
  sha256 "cb8e46a1310bb72bce4ae04998c181164de18b9908e07c7e2c7b564164358605"

  url "https://github.com/yannickpulver/lasso/releases/download/v#{version}/Lasso.zip"
  name "Lasso"
  desc "Lasso anything on screen and ask AI about it"
  homepage "https://github.com/yannickpulver/lasso"

  app "Lasso.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.lasso.plist",
  ]

  caveats <<~CAVEATS
    Lasso needs Screen Recording permission:
    System Settings → Privacy & Security → Screen & System Audio Recording.
    Set your Gemini API key via the menu bar icon → Settings.
  CAVEATS
end
