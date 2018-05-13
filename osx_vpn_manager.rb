class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/1.0.0/osx_vpn_manager-1.0.0.tar.gz"
  sha256 "630f58a32f26ab1dbc4a265ed3ce8029af1cb3d667776820e2a0ece55ed4907d"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "1.0.0", `#{bin}/vpn --version`
  end
end
