class Zipstream < Formula
  desc "Easily share files and directories over the network."
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.23.16.tar.gz"
  sha256 "208d83379b5dd556f2cd49345dfb69a59f93a9c7940772c111a0accf8ecd1bcf"
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
