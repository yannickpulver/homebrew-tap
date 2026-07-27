cask "brief" do
  version "1.0.0"
  sha256 "e1a4078eec272290ad02b884538e64ed4e76f1babead4bf442c8b1f960dc41a5"

  url "https://github.com/yannickpulver/brief/releases/download/v#{version}/Brief-#{version}.zip"
  name "Brief"
  desc "Menu bar calendar with next-meeting countdown and one-click join"
  homepage "https://github.com/yannickpulver/brief"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Brief.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.brief.plist",
  ]
end
