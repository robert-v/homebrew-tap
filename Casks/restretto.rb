cask "restretto" do
  version "1.0.7"
  sha256 "ef136e981ab335c4a803fe9522c0555de97d48a21726466569651a41ce66ade2"

  url "https://restretto.app/archive/Restretto_#{version}.zip"
  name "Restretto"
  desc "Minimal native REST API client"
  homepage "https://restretto.app"

  livecheck do
    url "https://restretto.app/archive/appcast.xml"
    strategy :sparkle
  end

  # Important since you use Sparkle: prevents Homebrew from
  # downgrading the app if the user updates via the in-app updater.
  auto_updates true 
  
  depends_on macos: ">= :sonoma"

  app "Restretto.app"

  # specific cleanup instructions for uninstalls
  zap trash: [
    "~/Library/Application Support/Restretto",
    "~/Library/Caches/com.itone.Restretto",
    "~/Library/Preferences/com.itone.Restretto.plist",
    "~/Library/Saved Application State/com.itone.Restretto.savedState",
  ]
end
