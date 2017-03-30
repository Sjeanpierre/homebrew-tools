class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.6/osx_vpn_manager-0.0.6.tar.gz"
  sha256 "932dc3d0a9682891532a051bcd409d9c204cf0586e5852647357491d2c7a7975"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.6", `#{bin}/vpn --version`
  end
end
