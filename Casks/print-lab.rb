cask "print-lab" do
  version "0.1.8"
  sha256 "3fea8dd213f21e01c9e540e70418da0b3d6a31bff4d2e5fdb928ff1b83453997"

  url "https://github.com/yannickpulver/print-lab/releases/download/v#{version}/Print-Lab.zip"
  name "Print Lab"
  desc "Photo printing for the Canon imagePROGRAF PRO-1000"
  homepage "https://github.com/yannickpulver/print-lab"

  depends_on macos: ">= :tahoe"
  auto_updates true

  app "Print Lab.app"

  zap trash: [
    "~/Library/Preferences/com.yannickpulver.PrintLab.plist",
    "~/Library/Application Support/PrintLab",
  ]

  caveats <<~CAVEATS
    Print Lab prints through Canon's IJ driver for the PRO-1000.
    Install it from Canon's support site and add the printer in
    System Settings → Printers & Scanners.
  CAVEATS
end
