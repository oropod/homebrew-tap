# Written by scripts/release-orostore.sh into the public oropod/homebrew-tap. Edit the template, not the tap
class Orostore < Formula
  desc "Manage your organisation's Oropod Storage: crew, Seats and managers"
  homepage "https://oropod.com"
  url "https://github.com/oropod/homebrew-tap/releases/download/orostore-v0.6.1/orostore-0.6.1-macos.tar.gz"
  sha256 "b1789f30ffd95b9ac18e47ab8098985a6f820dd1e4017caa65b7b60f8a3572c7"
  version "0.6.1"

  depends_on macos: :sequoia

  def install
    bin.install "orostore"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/orostore --version").strip
  end
end
