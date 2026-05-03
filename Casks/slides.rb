cask "slides" do
  version "1.7.4"

  on_arm do
    sha256 "c807f2a688f696a5f4d8eec876bdfed99290e593a52ecd32ccdc44b1c546f875"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "cfd60031ccc6d123057f20cb23afb8f5f32e0ff9af15280b0102b59acaa0732e"
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
