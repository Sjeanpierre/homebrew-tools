class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.3/osx_vpn_manager-0.0.3.tar.gz"
  sha256 "bbd7f5ac9c4a25ab913dcd90d13b52b67843ef059a8bdd06a48c17ede67d33f6"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.2", `#{bin}/vpn --version`
  end
end
