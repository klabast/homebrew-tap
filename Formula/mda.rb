class Mda < Formula
  desc "View and set default application associations on macOS"
  homepage "https://github.com/klabast/macOSDefaultApps"
  url "https://github.com/klabast/macOSDefaultApps/releases/download/v0.6.1/mda-0.6.1-universal.tar.gz"
  sha256 "855501ba583491c99779b45c1190788e96a724ba0ca135aac8d51bf6f824b11e"
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
