cask "ai-usage-ball" do
  version "0.3.8"
  sha256 "88ff64c03e8b1f52bc7ffac3174f92a99ed65731b7de930dd1aa128569bea9b6"

  url "https://github.com/aiusageball/ai-usage-ball/releases/download/v#{version}/AI-Usage-Ball.dmg",
      verified: "github.com/aiusageball/ai-usage-ball/"
  name "AI Usage Ball"
  desc "Liquid orbs for leftover Claude, Codex, and Antigravity quota"
  homepage "https://aiusageball.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  depends_on arch: :arm64

  app "AI Usage Ball.app"

  zap trash: [
    "~/Library/Application Support/com.aiusageball.desktop",
    "~/Library/Caches/com.aiusageball.desktop",
    "~/Library/Preferences/com.aiusageball.desktop.plist",
    "~/Library/WebKit/com.aiusageball.desktop",
  ]
end
