cask "brief" do
  version "1.2.7"
  sha256 "3e96a98fcf4d5c90f7b56971f95c3d81172d2d0a3bb3ed17953b03dfad31a7f2"

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
