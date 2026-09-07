class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "e332203a9995487bbcf3420bd00880a4dea6abeaa29ac1162f2c936885eb933c"
  license "MIT"
  head "https://github.com/klabast/macOSDefaultApps.git", branch: "main"

  depends_on macos: :sequoia
  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "--product", "mda"
    # the catalog ships in a swiftpm resource bundle that Bundle.module looks
    # for next to the running binary. a bin symlink resolves to the link path,
    # not the target, so the bundle is missed — an exec script gets it right.
    libexec.install ".build/release/mda"
    libexec.install Dir[".build/release/*.bundle"]
    bin.write_exec_script libexec/"mda"
  end

  test do
    assert_match "default application associations", shell_output("#{bin}/mda --help")
    assert_match "\t", shell_output("#{bin}/mda get txt")
    # catalog-backed path: needs the resource bundle alongside the binary
    assert_match "plain text", shell_output("#{bin}/mda dump")
  end
end
