cask "phila-clear" do
  version "1.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://clear.phila.in.th/downloads/PhilaClear-#{version}.dmg"
  name "Phila Clear"
  desc "Review-first disk cleaner: caches, developer junk, large files and System Data"
  homepage "https://clear.phila.in.th/"

  livecheck do
    url "https://clear.phila.in.th/appcast.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Phila Clear.app"

  zap trash: [
    "~/Library/Caches/th.in.phila.clear",
    "~/Library/HTTPStorages/th.in.phila.clear",
    "~/Library/Preferences/th.in.phila.clear.plist",
    "~/Library/Saved Application State/th.in.phila.clear.savedState",
  ]
end
