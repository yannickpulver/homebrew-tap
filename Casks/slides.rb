cask "slides" do
  version "1.6.0"

  on_arm do
    sha256 "3f1452266a6c27c8bab68cd582e994598f1be4bf1d34bb4c6121f47ba8fb61f9"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "23448352209d3d7b6ee857251b2cf1734a9bddaaf37a7c993e1cf3cd128ef19c"
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
