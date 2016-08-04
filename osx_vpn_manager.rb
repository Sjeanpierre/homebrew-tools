class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.5/osx_vpn_manager-0.0.5.tar.gz"
  sha256 "c8ff67bc31516dae526f9074b50753482a910c56a9410b14d91a41392d121b3b"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.5", `#{bin}/vpn --version`
  end
end
