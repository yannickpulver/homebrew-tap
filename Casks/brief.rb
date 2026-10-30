cask "brief" do
  version "1.2.9"
  sha256 "7196fd8c3f7615aa3c6a481b77371532fc63048586852e9b8606f426c1ae32f9"

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
