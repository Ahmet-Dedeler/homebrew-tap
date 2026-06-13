cask "iconic" do
  version "1.0.0"
  sha256 "d53a8f983241c864c97e720e85035fa42650a91cec0e71da0ba3f33186bdfc35"

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
