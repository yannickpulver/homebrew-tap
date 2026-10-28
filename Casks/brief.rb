cask "brief" do
  version "1.2.8"
  sha256 "f3f1d45119cc843682e37f826ea6b4a32a885d996ae22efee434f5c9aa5f9733"

  url "https://github.com/yannickpulver/brief/releases/download/v#{version}/Brief-#{version}.zip"
  name "Brief"
  desc "Menu bar calendar with next-meeting countdown and one-click join"
  homepage "https://github.com/yannickpulver/brief"

  auto_updates true
  depends_on arch: :arm64

  app "Brief.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.brief.plist",
  ]
end
