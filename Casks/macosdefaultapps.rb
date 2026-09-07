cask "macosdefaultapps" do
  version "0.4.0"
  sha256 "e2a838a3ce7b7e6d689a773561ef9bbe372282754d7847644ed94707f442f099"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
