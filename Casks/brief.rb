cask "brief" do
  version "1.2.4"
  sha256 "1e74d5d67a850b9f33f9ab285e5bf3ce1eb603eaf71be7b7fa98ba13e0d34e26"

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
