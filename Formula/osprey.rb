class Osprey < Formula
  desc "Diagnostics launcher for the Osprey UniFi PTZ controller"
  homepage "https://github.com/grayslawson/osprey"
  version "0.9.0b3"
  url "https://github.com/grayslawson/osprey/archive/refs/tags/v0.9.0b3.tar.gz"
  sha256 "d9b31b1c3d2f39a0eae000eaf6a1ed3a18954c2b99e08a3c480866e5fc2c38ef"
  license "MIT"
  def install
    bin.install "scripts/osprey"
    bin.install "scripts/osprey-doctor.sh"
  end
  test do
    assert_match "Usage: osprey", shell_output("#{bin}/osprey --help")
  end
end
