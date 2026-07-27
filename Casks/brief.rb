cask "brief" do
  version "1.0.1"
  sha256 "0d373312db6592007695a2a166f7c2f3eb2760f9fda5ba2f0b04a78c39809531"

  url "https://github.com/yannickpulver/brief/releases/download/v#{version}/Brief-#{version}.zip"
  name "Brief"
  desc "Menu bar calendar with next-meeting countdown and one-click join"
  homepage "https://github.com/yannickpulver/brief"

  depends_on arch: :arm64

  app "Brief.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.brief.plist",
  ]
end
