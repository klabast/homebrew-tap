cask "macosdefaultapps" do
  version "0.7.1"
  sha256 "08f4c73c91208da6c044f768e93b3ef88ac3d419c5841107d771a0a7e9c6986a"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
