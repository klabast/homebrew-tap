class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "45fe2afc73d1677707a4126aba731ef8f1737fd88fd732467f4b74a8bb31bb86"
  license "MIT"
  head "https://github.com/klabast/macOSDefaultApps.git", branch: "main"

  depends_on macos: :sequoia
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "mda"
    bin.install ".build/release/mda"
  end

  test do
    assert_match "default application associations", shell_output("#{bin}/mda --help")
    assert_match "\t", shell_output("#{bin}/mda get txt")
  end
end
