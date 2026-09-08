class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/releases/download/v0.7.0/mda-0.7.0-universal.tar.gz"
  sha256 "88154afc050c1ee0f6dfef415d07bf0a8a2305f1d482889e10d8b61694ceedc1"
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
