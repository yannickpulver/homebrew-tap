cask "slides" do
  version "1.5.4"

  on_arm do
    sha256 "54d8d4796c0eb9413b0d946ac238a563347968927df79adeed0b863e15d1f83b"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "c53b4e845c20e0dbb26b08a96c2faf276c87d615ee2c92abe34ffe1e49acb9e9"
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
