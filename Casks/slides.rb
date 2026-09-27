cask "slides" do
  version "1.7.6"

  on_arm do
    sha256 "94c444d32fbd3fb7bc50e053627fc736e1d3ac702998ff009596c046404e83a2"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "4dcc78bf9f149ee9b483e9f9100ca01d47fa9cd3ab60e7f2910fb5573c819000"
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
