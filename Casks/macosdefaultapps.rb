cask "macosdefaultapps" do
  version "0.3.0"
  sha256 "cb94b1110d49680e96e81a6fb2baf21572aae77b84edc332054213d56963f409"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: :sequoia

  app "macOSDefaultApps.app"
end
