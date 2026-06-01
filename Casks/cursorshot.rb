cask "cursorshot" do
  version "0.4.2"
  sha256 "3d3886e1410fa63158aef80643e9bd49af87a2b7643f63b147fcf24f79121e27"

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
