cask "restretto" do
  version "1.0.10"
  sha256 "1373384f285c92d563fd5ee2a76ad4577e5bef34b21d8a82309c96adb19490ae"

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
