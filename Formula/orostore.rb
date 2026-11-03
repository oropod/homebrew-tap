# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.4.0/orostore-0.4.0-macos.tar.gz"
  sha256 "68b6ff9b38dde73b844a5978fa7d5ebccfe2ed3c49a434d4efe0a8195c06b2e3"
  version "0.4.0"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
