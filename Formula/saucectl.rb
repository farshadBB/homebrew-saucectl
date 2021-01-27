# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.25.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.25.0/saucectl_0.25.0_mac_64-bit.tar.gz"
    sha256 "f46a61e2c20f01dddecffb3fa84eb0c1af6adfd3757a576e1f3caebac01009a5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.25.0/saucectl_0.25.0_linux_64-bit.tar.gz"
    sha256 "f8e917152d73f27f1fae938d199fa0f9ece9718bfdc6c0b8bfa968e6357ac911"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.25.0/saucectl_0.25.0_linux_arm64.tar.gz"
    sha256 "f8d95eed984afeac127cccab01806a54791d1ecde33bc865350a8fe29d42c1bc"
  end

  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
