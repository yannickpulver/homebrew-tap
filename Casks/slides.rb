cask "slides" do
  version "1.5.3"

  on_arm do
    sha256 "5ae44c2ab53e43bb0bb12f0c31ec9643d1bb10c8c892f21a39f961d97a063b2f"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "75b7d3152fbafbc9bf2c315922511d6fe13be1b13e78b1d210fe24be5bddabc9"
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
