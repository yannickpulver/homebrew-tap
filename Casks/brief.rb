cask "brief" do
  version "1.2.3"
  sha256 "b0b627307cf1013676ad929fb7784d2f4f108ac3a8dd174a81d77aa184b4933e"

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
