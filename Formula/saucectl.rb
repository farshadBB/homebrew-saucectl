# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.9.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.9.2/saucectl_0.9.2_mac_64-bit.tar.gz"
    sha256 "8923e2cb3351a0977a4a039e6c708de987158d2d32050e98f0b802d57ffd0080"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.9.2/saucectl_0.9.2_linux_64-bit.tar.gz"
      sha256 "cd94ad7ca9f20ff0a42f1760c27a49b4c771016f8b4614dcd314580b51929c2c"
    end
  end
  
  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
