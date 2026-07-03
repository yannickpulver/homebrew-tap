cask "lasso" do
  version "0.0.2"
  sha256 "960c73d3ea666c2ceaaabe975a1d4123bceab38ef37abe48065b3343711b22e6"

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
