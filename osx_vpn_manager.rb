class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/0.0.3/osx_vpn_manager-0.0.3.tar.gz"
  sha256 "131e94ee650d9ee961479a14f6c6adcb09898467fd3beced544ea0b0a1cda2bc"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "0.0.3", `#{bin}/vpn --version`
  end
end
