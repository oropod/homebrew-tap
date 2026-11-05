# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.8.0/orostore-0.8.0-macos.tar.gz"
  sha256 "fc42851c2a16481139a535abf8929d824e7c2c279d1defed500c0605d1bc45e5"
  version "0.8.0"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
