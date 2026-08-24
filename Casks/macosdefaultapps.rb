cask "macosdefaultapps" do
  version "0.1.0"
  sha256 "6960b42d8366bb1e81446b37ed60363f3798c8dea19f598104c5aa02dbfd9f94"

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
