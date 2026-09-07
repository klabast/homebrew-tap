cask "macosdefaultapps" do
  version "0.5.0"
  sha256 "b5b6e4417af386c3d49ea5960a8c69791a9e9f7180e969e6de9e4d26d58d5cdc"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
