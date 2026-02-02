cask "restretto" do
  version "1.0.7"
  sha256 "5541737be89b8ce951ce4de4603893a3b6ca01c7"

  url "https://restretto.app/archive/Restretto_{version}.zip"
  name "Restretto"
  desc "Minimal natvie REST API client"
  homepage "https://restretto.app"

  # Important since you use Sparkle: prevents Homebrew from
  # downgrading the app if the user updates via the in-app updater.
  auto_updates true 
  
  depends_on macos: ">= :monterey" # Adjust based on your SwiftUI minimum target

  app "Restretto.app"

  # specific cleanup instructions for uninstalls
  zap trash: [
    "~/Library/Application Support/Restretto",
    "~/Library/Caches/com.yourname.Restretto",
    "~/Library/Preferences/com.yourname.Restretto.plist",
    "~/Library/Saved Application State/com.yourname.Restretto.savedState",
  ]
end
