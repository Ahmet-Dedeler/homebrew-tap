cask "iconic" do
  version "1.0.0"
  sha256 "dbca8e1f3968f02cad3fb3b322c6807e03ce5976e61f872ce030eb2981127d59"

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
