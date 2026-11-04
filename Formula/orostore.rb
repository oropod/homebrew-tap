# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.7.1/orostore-0.7.1-macos.tar.gz"
  sha256 "bd50fab0042fe42d0440b5c9b8aea57aecdd91778b620bdf91cd64195d710583"
  version "0.7.1"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
