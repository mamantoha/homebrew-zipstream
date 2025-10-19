class Zipstream < Formula
  desc "Easily share files and directories over the network"
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.24.2.tar.gz"
  sha256 "1c2700f9b098f6ff7e63d9629e9cf2ac4c6639f14b4c726fee5f16b8ab619dad"
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
