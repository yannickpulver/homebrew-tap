cask "lasso" do
  version "0.0.1"
  sha256 "1a8eac1d36a2dbd14c7a629f75e28825b0e3d0dfed6a4ca5de8b0c825a69aeda"

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
