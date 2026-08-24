cask "macosdefaultapps" do
  version "0.2.0"
  sha256 "510c754eb4a14952e28c5140c9502270d916aacc8ed935a77b702e8afa49db84"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"

  caveats <<~EOS
    macOSDefaultApps is not notarized yet. If macOS blocks the first launch:
    System Settings → Privacy & Security → "Open Anyway",
    or install with: brew install --cask --no-quarantine macosdefaultapps
  EOS
end
