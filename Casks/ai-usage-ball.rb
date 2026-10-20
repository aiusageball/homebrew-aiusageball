cask "ai-usage-ball" do
  version "0.3.6"
  sha256 "e6968a563ad172beb083b187d85453186eebee39a6a0e5b8bd85c139509d633d"

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
