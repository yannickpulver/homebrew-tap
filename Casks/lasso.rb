cask "lasso" do
  version "0.0.3"
  sha256 "74d778773ec4b4245c65758b7f1a7eb189c46853b8f31fa4c2e9fa9376ed724a"

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
