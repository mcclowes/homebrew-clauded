cask "clauded" do
  version "0.4.0"
  sha256 "2d569289b5203b559b21c737496e65ab6ec4a5dc1cc8321d0d4f5695835294f3"

  url "https://github.com/mcclowes/clauded/releases/download/v#{version}/Clauded.zip",
      verified: "github.com/mcclowes/clauded/"
  name "Clauded"
  desc "Menu bar app for managing Claude Code instances"
  homepage "https://github.com/mcclowes/clauded"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Clauded.app"

  zap trash: [
    "~/Library/Application Support/Clauded",
    "~/Library/Preferences/com.mcclowes.clauded.plist",
  ]
end
