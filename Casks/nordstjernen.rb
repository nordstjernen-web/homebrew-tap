cask "nordstjernen" do
  version "1.0.44"
  sha256 "d283e9b4c5f133666897916ed4a92d6167440a65f46323df9ff7f9069a712829"

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
