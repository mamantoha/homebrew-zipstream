class Zipstream < Formula
  desc "Easily share files and directories over the network"
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.23.20.tar.gz"
  sha256 "ea1e664ee4a5be8abe1db16f1a7498a009c7c375270c9884a7312a08bc5dae1e"
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
