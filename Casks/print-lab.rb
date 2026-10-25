cask "print-lab" do
  version "0.1.7"
  sha256 "e54f6f5146945925b30aa0303a8d53ccc12eff5f16677184d8b543f830ea95f0"

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
