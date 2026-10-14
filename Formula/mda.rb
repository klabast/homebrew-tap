class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/releases/download/v0.8.0/mda-0.8.0-universal.tar.gz"
  sha256 "c1de5eba97c4fdba60b2c1a666c38b6546dd1fb4947eadb61b9e6da65af5e17a"
  license "MIT"

  depends_on macos: :sequoia

  def install
    # the catalog ships in a swiftpm resource bundle that Bundle.module looks
    # for next to the running binary. a bin symlink resolves to the link path,
    # not the target, so the bundle is missed — an exec script gets it right.
    libexec.install "mda"
    libexec.install "macOSDefaultApps_DefaultAppsCore.bundle"
    bin.write_exec_script libexec/"mda"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mda --version")
    assert_match "default application associations", shell_output("#{bin}/mda --help")
    assert_match "\t", shell_output("#{bin}/mda get txt")
    # catalog-backed path: needs the resource bundle alongside the binary
    assert_match "plain text", shell_output("#{bin}/mda dump")
  end
end
