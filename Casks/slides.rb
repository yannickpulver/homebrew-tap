cask "slides" do
  version "1.7.0"

  on_arm do
    sha256 "f21ec4d952149df1678427b92be96d02a2958d24a56416a9245d508ecbc9d037"
    url "https://github.com/yannickpulver/slides/releases/download/#{version}/slides-#{version}-mac-aarch64.zip"
  end

  on_intel do
    sha256 "4638be180758c4454b4b731d4d1b56becd0c781d6960b2a475259b2205218be8"
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
