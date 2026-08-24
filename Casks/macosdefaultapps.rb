cask "macosdefaultapps" do
  version "0.1.0"
  sha256 "402aa886c725cd7cdfcab2ac0bf5eaaa83f0f229d692ba92aad6b3d2db814de7"

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
