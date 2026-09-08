cask "macosdefaultapps" do
  version "0.6.1"
  sha256 "b7218ded39e3f12a906b73602d531df49e8d7e18c4616683c1f5156d25e78dde"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
