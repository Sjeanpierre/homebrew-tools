class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.4/osx_vpn_manager-0.0.4.tar.gz"
  sha256 "1c4908d22b99d568f37e011ac3afa4b5c1b163c5553b99d4d327dafa63bc5ab3"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.3", `#{bin}/vpn --version`
  end
end
