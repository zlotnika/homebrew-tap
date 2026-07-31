cask "yorick" do
  version "0.2.2"
  sha256 "320eaa946b6dd6e579fa042d886a4f08038403159432c1e1fdfa2c6ab7fb8b0e"

  url "https://github.com/damianr/yorick/releases/download/v#{version}/Yorick-#{version}.dmg"
  name "Yorick"
  desc "Local dictation — hold a hotkey, talk, and your words are typed at your cursor"
  homepage "https://heyyorick.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Yorick.app"

  zap trash: [
    "~/Library/Application Support/com.heyyorick.Yorick",
    "~/Library/Application Support/Yorick",
    "~/Library/Caches/com.heyyorick.Yorick",
    "~/Library/HTTPStorages/com.heyyorick.Yorick",
    "~/Library/Preferences/com.heyyorick.Yorick.plist",
    "~/Library/Saved Application State/com.heyyorick.Yorick.savedState",
  ]
end
