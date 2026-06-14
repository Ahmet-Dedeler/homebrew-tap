cask "iconic" do
  version "1.4.5"
  sha256 "8c9f9acd63d3ae7745389d06b949d1be4401697495b8f318d7639094497f8aed"

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
