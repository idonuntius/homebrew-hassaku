# Homebrew cask for the Hassaku macOS app (Developer ID signed + notarized DMG).
#
# Source of the public tap repo `idonuntius/homebrew-hassaku` (this directory is copied there).
# The Hassaku monorepo is private, so its releases aren't publicly downloadable — the DMG made by
# scripts/release.sh is attached to the tap repo's own release `v<version>`, and `url` points there.
# At release time update version / sha256 (release.sh prints the DMG's SHA-256).
cask "hassaku" do
  version "0.1.0"
  sha256 "44dc0b19ea518a8015c790e91470ecb77ec746cd3f1ec8ce607431e7ef5bd0b7"

  url "https://github.com/idonuntius/homebrew-hassaku/releases/download/v#{version}/Hassaku-#{version}.dmg"
  name "Hassaku"
  desc "Record multiple Android devices, an iPhone and app windows into one video"
  homepage "https://github.com/idonuntius/homebrew-hassaku"

  depends_on macos: :sonoma # macOS 14 or newer

  app "Hassaku.app"

  zap trash: "~/Library/Preferences/com.idonuntius.hassaku.plist"
end
