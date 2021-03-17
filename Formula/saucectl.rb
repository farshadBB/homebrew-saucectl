# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.33.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.33.1/saucectl_0.33.1_mac_64-bit.tar.gz"
    sha256 "d5369b4f128c630e1fa93ce33307a56023399e5f7598ce8d1d1d15eda7900f44"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.33.1/saucectl_0.33.1_mac_arm64.tar.gz"
    sha256 "f413646790a4d827e1d0b1d4439ff5b5fc800ee75d44af0b6dc2be2801223823"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.33.1/saucectl_0.33.1_linux_64-bit.tar.gz"
    sha256 "b1daec7792139dc918aa70b1db8d75ec7f134d883abef98db7a2cd69df3caff2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/saucelabs/saucectl/releases/download/v0.33.1/saucectl_0.33.1_linux_arm64.tar.gz"
    sha256 "c37b8e48d5d15259134d1308d8bfb42876437f87fcea3dffcc0e16027225577a"
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
