cask "macosdefaultapps" do
  version "0.8.0"
  sha256 "b2ede412d2d0346f86dc5e8ad09285bc6cba19b8267c9fd3f2864330c1d32d28"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
