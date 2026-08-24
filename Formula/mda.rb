class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "99b519ed178638d8f5084bcd345b8a9f4dc2d032d7ed288be64e07eef7aa2ee9"
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
