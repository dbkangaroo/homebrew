cask "kangaroo-multiple" do
  version "5.3.1.240901"
  sha256 "b504153f6ef8779f167e092482f0920921ca83007979ab6d1e5b3cd95ac12133"

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
