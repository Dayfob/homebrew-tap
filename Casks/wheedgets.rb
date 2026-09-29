cask "wheedgets" do
  version "0.1.0"
  sha256 "0cea67525837b55d50eec161e249913c3afb94c950a87a74a72319c054e10bb3"

  url "https://github.com/Dayfob/wheedgets/releases/download/v#{version}/Wheedgets-#{version}.zip"
  name "Wheedgets"
  desc "Fidget widgets for the menu bar: drums, a spinner and keyboard sounds"
  homepage "https://github.com/Dayfob/wheedgets"

  depends_on macos: :sonoma

  app "Wheedgets.app"

  uninstall quit: "dev.wheedgets.Wheedgets"

  zap trash: [
    "~/Library/Application Support/dev.wheedgets.Wheedgets",
    "~/Library/Preferences/dev.wheedgets.Wheedgets.plist",
  ]

  caveats <<~EOS
    Wheedgets isn't notarized by Apple yet, so macOS may refuse to open it
    the first time. Open System Settings → Privacy & Security, scroll down
    and click "Open Anyway" next to Wheedgets.
  EOS
end
