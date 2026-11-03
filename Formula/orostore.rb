# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.5.0/orostore-0.5.0-macos.tar.gz"
  sha256 "3fbaeb2b37d2a5f7fa24d921c59a2b8fa225e0da9e703ee4c38b07dd3dcd1c7e"
  version "0.5.0"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
