cask "clauded" do
  version "0.2.2"
  sha256 "e2ef885c6a5805692fecc139e51859798353a18cbcef4753e8517b03657ea994"

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
