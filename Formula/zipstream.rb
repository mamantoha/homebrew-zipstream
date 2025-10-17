class Zipstream < Formula
  desc "Easily share files and directories over the network"
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.24.1.tar.gz"
  sha256 "60f4f2e173ebc693427a3e55acfdeabcc3c27187114ab30fbd438c77e1319057"
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
