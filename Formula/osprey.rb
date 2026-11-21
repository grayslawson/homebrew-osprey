class Osprey < Formula
  desc "Diagnostics launcher for the Osprey UniFi PTZ controller"
  homepage "https://github.com/grayslawson/osprey"
  version "0.9.0b2"
  url "https://github.com/grayslawson/osprey/archive/refs/tags/v0.9.0b2.tar.gz"
  sha256 "cc6f11019243b2c75ac30e9f1cc0412a7fdf81dba9e479edbfd3caaaa40cb5a4"
  license "MIT"
  def install
    bin.install "scripts/osprey"
    bin.install "scripts/osprey-doctor.sh"
  end
  test do
    assert_match "Usage: osprey", shell_output("#{bin}/osprey --help")
  end
end
