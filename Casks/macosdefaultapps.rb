cask "macosdefaultapps" do
  version "0.5.1"
  sha256 "0be5aa52e783dea808f67a7cf5d9f896006ca8cf3862f9a790645e38badb37e5"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
