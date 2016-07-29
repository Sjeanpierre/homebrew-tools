class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.3/osx_vpn_manager-0.0.3.tar.gz"
  sha256 "a0a609729df134d8fef4ea1f18fd9851d28fdef4a4217e11cd8cf926c25a1382"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.3", `#{bin}/vpn --version`
  end
end
