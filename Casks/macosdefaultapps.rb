cask "macosdefaultapps" do
  version "0.6.0"
  sha256 "8e374fcc1915a0cfc5c35fdf8079196aedc7ae5016ff278db445293e1ad545a7"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
