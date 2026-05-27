cask "cursorshot" do
  version "0.4.0"
  sha256 "e1702406478a1569b9fab067ababf4eaf6b67fb900f671a8bca3cc50b600e9dc"

  url "https://github.com/ps-apps/CursorShot/releases/download/v#{version}/CursorShot.dmg"
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
