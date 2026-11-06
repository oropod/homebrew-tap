# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.8.1/orostore-0.8.1-macos.tar.gz"
  sha256 "fb3cba446f3db83b595fb6dcf5ccc89df6cf47b816e2b19771c9f450a7362762"
  version "0.8.1"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
