cask "cursorshot" do
  version "0.4.3"
  sha256 "e13af5a2073d15e5bbf22ca9fe9973ceb18a022aebfcf7745adc2d4126d3ac33"

  url "https://github.com/ps-apps/CursorShot/releases/download/v#{version}/CursorShot.dmg",
      verified: "github.com/ps-apps/CursorShot/"
  name "CursorShot"
  desc "Local-first macOS screenshot utility"
  homepage "https://ps-apps.github.io/CursorShot/"

  depends_on macos: ">= :sonoma"

  app "CursorShot.app"

  uninstall quit: "io.github.ps-apps.cursorshot"

  zap trash: [
    "~/Library/Application Support/CursorShot",
    "~/Library/Logs/CursorShot",
    "~/Library/Preferences/io.github.ps-apps.cursorshot.plist",
  ]
end
