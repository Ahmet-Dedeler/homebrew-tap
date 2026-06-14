cask "iconic" do
  version "1.0.1"
  sha256 "c7bcb85e6b0aedfcee41467753c394a9dd2ac013c9c67058dec9964ca2e4cdf9"

  url "https://icons.ahmetdedeler.com/download/Iconic-#{version}.dmg",
      verified: "icons.ahmetdedeler.com/"
  name "Iconic"
  desc "Customize app icons"
  homepage "https://icons.ahmetdedeler.com"

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
