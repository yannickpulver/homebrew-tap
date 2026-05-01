cask "slides" do
  version "1.7.3"

  on_arm do
    sha256 "de5a3eb7ee6790fe59e3a1d27ab4b3a6bb0a42aa87e5ae75f9ff020267e23cbc"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "904f7a6dd096a961c1887892657786af1d05ec22bd53aaa44a9185f5cdbd684a"
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
