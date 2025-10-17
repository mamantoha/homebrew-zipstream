class Zipstream < Formula
  desc "Easily share files and directories over the network"
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.24.0.tar.gz"
  sha256 "665729207ba8c3c2d15bed166fc97f0215a0cfc2ca6903c41c9ac0c45c1a1511"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards", "install", "--production"
    system "shards", "build", "--release"
    bin.install "bin/zipstream"
  end

  test do
    system "#{bin}/zipstream", "--help"
  end
end
