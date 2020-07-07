# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.9.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.9.3/saucectl_0.9.3_mac_64-bit.tar.gz"
    sha256 "15309e4f26c9a5a3eba53753096d6da7b4834ef1582789581080d378aba70b14"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.9.3/saucectl_0.9.3_linux_64-bit.tar.gz"
      sha256 "e4e77023b2385679be923ddc6b55ee441cb19257b9dfb82e253c2bb0ff2882e9"
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
