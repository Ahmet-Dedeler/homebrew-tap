cask "iconic" do
  version "1.4.5"
  sha256 "0fc3106b75daf8dcc0ce48e938b1980a23b23924853d3907aca984ddf325e875"

  url "https://icons.ahmetdedeler.com/download/Iconic-#{version}.dmg",
      verified: "icons.ahmetdedeler.com/"
  name "Iconic"
  desc "Customize app icons"
  homepage "https://icons.ahmetdedeler.com/"

  livecheck do
    url "https://icons.ahmetdedeler.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Iconic.app"

  zap trash: [
    "~/.iconic",
    "~/Library/Application Support/com.ahmetdedeler.Iconic",
    "~/Library/Caches/com.ahmetdedeler.Iconic",
    "~/Library/Preferences/com.ahmetdedeler.Iconic.plist",
  ]
end
