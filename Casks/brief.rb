cask "brief" do
  version "1.2.6"
  sha256 "3d3135298e16983ed1fabb878c5e08605b943820b459f0ab6bf5e09e0f097f65"

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
