cask "lasso" do
  version "0.0.4"
  sha256 "57efdf3373df5deaad40a538ef00764db73adc308540b416cae45dd04d6d7e57"

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
