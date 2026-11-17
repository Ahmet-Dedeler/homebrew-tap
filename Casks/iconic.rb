cask "iconic" do
  version "1.4.9"
  sha256 "fc7f99b9c3b9ce1e2a32d02fd211b6b4d283db2b7b555aac27c554f92ba5af7e"

  url "https://icons.ahmetdedeler.com/download/Iconic-#{version}.dmg"
  name "Iconic"
  desc "Restyle app and folder icons in one click"
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
