class Zipstream < Formula
  desc "Easily share files and directories over the network"
  homepage "https://github.com/mamantoha/zipstream"
  url "https://github.com/mamantoha/zipstream/archive/refs/tags/v0.25.0.tar.gz"
  sha256 "ef7d01d79dce0de2794d425e6216cc24b4a5f66acd785119cd5bf0600250afb0"
  license "MIT"

  depends_on "crystal"

  def install
    system "shards", "install", "--production"
    system "shards", "build", "--release", "-Dpreview_mt", "-Dexecution_context"
    bin.install "bin/zipstream"
  end

  test do
    system "#{bin}/zipstream", "--help"
  end
end
