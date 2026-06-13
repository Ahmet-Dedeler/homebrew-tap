cask "iconic" do
  version "1.0.1"
  sha256 "c7bcb85e6b0aedfcee41467753c394a9dd2ac013c9c67058dec9964ca2e4cdf9"

  url "https://github.com/Ahmet-Dedeler/Iconic/releases/download/v#{version}/Iconic.dmg",
      verified: "github.com/Ahmet-Dedeler/Iconic/"
  name "Iconic"
  desc "Customize app icons"
  homepage "https://github.com/Ahmet-Dedeler/Iconic"

  livecheck do
    url :url
    strategy :github_latest
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
