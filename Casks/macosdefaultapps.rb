cask "macosdefaultapps" do
  version "0.1.0"
  sha256 "9f44e0813c8e52fa16819ccc91a3e3354545af5d16545edf582a1beda868202c"

  url "https://github.com/klabast/macOSDefaultApps/releases/download/v#{version}/macOSDefaultApps-#{version}.zip"
  name "macOSDefaultApps"
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"

  depends_on macos: ">= :sequoia"

  app "macOSDefaultApps.app"

  caveats <<~EOS
    macOSDefaultApps is not notarized yet. If macOS blocks the first launch:
    System Settings → Privacy & Security → "Open Anyway",
    or install with: brew install --cask --no-quarantine macosdefaultapps
  EOS
end
