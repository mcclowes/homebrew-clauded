cask "clauded" do
  version "0.2.1"
  sha256 "a14feef8e0354823632a0159d81c4586cb7f3b5036c197f93fb2b28a942a6d4c"

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
