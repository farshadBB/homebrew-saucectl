# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.108.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.108.0/saucectl_0.108.0_mac_64-bit.tar.gz"
      sha256 "e1f6b6fe51644f5d334f6a3470730b04384f14657402c41895dd827c2b40bfd0"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.108.0/saucectl_0.108.0_mac_arm64.tar.gz"
      sha256 "d7cb42ce8ae94fc676e903d8d6173be0bb5919573b621bcab608111e4cc87aac"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.108.0/saucectl_0.108.0_linux_64-bit.tar.gz"
      sha256 "b03af762f8de5f1ff672ec6eb4e8fd0ba41e23916df9a10d7f7c4f5786b0b7a4"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.108.0/saucectl_0.108.0_linux_arm64.tar.gz"
      sha256 "7aa3f140cc2bb1d57713b9acea3072faf3972bf8bd41c6b09b52b24eac29ba96"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
