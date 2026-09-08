cask "macosdefaultapps" do
  version "0.7.0"
  sha256 "9ebdc248852af8d6e026bc2d8ec2ef399ef945715a00796d8651fe253879a234"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
