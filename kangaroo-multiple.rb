cask "kangaroo-multiple" do
  version "5.1.0.240701"
  sha256 "18a501f7815b67e49464545674d0de8f92441642de0c627f27a60fec8705d34d"

  url "https://github.com/dbkangaroo/kangaroo/releases/download/v#{version}/kangaroo-multiple-#{version}-x86_64.dmg"
  name "Kangaroo multiple"
  desc "Native GUI SQL client and admin tool for popular databases"
  homepage "https://github.com/dbkangaroo/kangaroo"

  livecheck do
    # Check main cask to get the latest version
    # cask "kangaroo-mutiple"

    # Mutiple check github tag to get the latest version
    url :stable
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "kangaroo.app"

  zap trash: [
    "~/Library/Application Support/org.gnome.Kangaroo",
    "~/Library/Caches/org.gnome.Kangaroo",
    "~/Library/Preferences/org.gnome.Kangaroo.plist",
    "~/Library/Saved Application State/org.gnome.Kangaroo.savedState",
  ]
end
