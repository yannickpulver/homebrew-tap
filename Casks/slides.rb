cask "slides" do
  version "1.7.1"

  on_arm do
    sha256 "d93aba2150d8e6bd05ac316e7188862161db6004a12285f5454507370fdc4574"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "d8a607a7f7485c9b9dedae4216891c2ca1331050ae17a392485ef592b1650b95"
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
