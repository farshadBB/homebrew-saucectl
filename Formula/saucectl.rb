# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.39.2"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.2/saucectl_0.39.2_mac_64-bit.tar.gz"
    sha256 "3b7409920a6b679210282537f8b3a0f87553ccccb7ffb91c58e23afd775e4128"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.2/saucectl_0.39.2_mac_arm64.tar.gz"
    sha256 "35d6361497e695edc499cbcd873f5ab506e4c4dbc814f8e9929b8243e0866a5b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.2/saucectl_0.39.2_linux_64-bit.tar.gz"
    sha256 "4cfde7e2b4fdea70cb8b5b9febceed814acd00edd77a6852c77bd833102a6805"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.39.2/saucectl_0.39.2_linux_arm64.tar.gz"
    sha256 "2c07b867a0637a94f47b219dfd673cdee02476112ca90307ac7b2b72cb35121d"
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
