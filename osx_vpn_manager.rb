class OsxVpnManager < Formula
  desc "Simple command-line vpn manager for OSX"
  homepage "https://github.com/Sjeanpierre/osx_vpn_manager"
  url "https://github.com/Sjeanpierre/osx_vpn_manager/releases/download/1.0.1/osx_vpn_manager-1.0.1.tar.gz"
  sha256 "fb7f9edec29e2ad26279118ffe7fb47945aaca4bece23b5f445f69e429030ea1"

  depends_on "macosvpn"

  def install
    bin.install "vpn"
  end

  test do
    assert_equal "1.0.1", `#{bin}/vpn --version`
  end
end
