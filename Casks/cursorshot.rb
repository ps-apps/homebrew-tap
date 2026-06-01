cask "cursorshot" do
  version "0.4.1"
  sha256 "160f8e6abfe88ae1d6aaa79e42e638f0c1c00d06ac64fdd68842aa8e2285b042"

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
