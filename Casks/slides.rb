cask "slides" do
  version "1.7.5"

  on_arm do
    sha256 "3f0bb20fc426ccc228880877d3bdf78dc7af9f21b7674fcb97a0dea382e5d74b"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "3286eae75d1b406fac332f7b861f165cf03cfa6c3a18fe1f36322d5d96e3effc"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-amd64.zip"
  end

  name "Slides"
  desc "Compose Multiplatform slides app"
  homepage "https://github.com/yannickpulver/slides"

  app "Slides.app"

  zap trash: [
    "~/Library/Application Support/Slides",
    "~/Library/Preferences/com.yannickpulver.slides.plist",
  ]
end
