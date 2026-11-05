cask "nordstjernen" do
  version "1.0.43"
  sha256 "6807a6f708738cf77355678148103717818c6ef63c2f8dc2020398d4f43647c0"

  url "https://github.com/nordstjernen-web/nordstjernen-sol-browser/releases/download/#{version}/nordstjernen-#{version}-macos-arm64.dmg",
      verified: "github.com/nordstjernen-web/nordstjernen-sol-browser/"
  name "Nordstjernen"
  name "Sol Explorer"
  desc "Web browser written from scratch in C"
  homepage "https://nordstjernen.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Nordstjernen.app"

  zap trash: [
    "~/.cache/nordstjernen",
    "~/.config/nordstjernen",
    "~/.local/share/nordstjernen",
  ]
end
