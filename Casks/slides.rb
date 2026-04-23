cask "slides" do
  version "1.7.2"

  on_arm do
    sha256 "1e9eb2c955a137d87cc436e4cddec0377f054b30d2ae5e71f59a52f1ec1d0a5e"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "871a1c2f98e5d4e00cfe0c2379b9811ec9f974db3f70aa25e7d4e2943d1fc8b1"
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
