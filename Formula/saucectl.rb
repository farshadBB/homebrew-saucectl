# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.26.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.26.0/saucectl_0.26.0_mac_64-bit.tar.gz"
    sha256 "e6cdff5bfba0cbb7be455ff9038861c2806668b13cb2d925d800c9b4fe8c1335"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.26.0/saucectl_0.26.0_linux_64-bit.tar.gz"
    sha256 "de90d75abc8a727d364d85447c3f99a2efeafae3571055f93e0ee358cdac08ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.26.0/saucectl_0.26.0_linux_arm64.tar.gz"
    sha256 "3c809f2d4f944d63c882d57ff5165dac2015b76dadcb0411c868b45576574d32"
  end

  depends_on "docker"

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
