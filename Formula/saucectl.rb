# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.113.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.0/saucectl_0.113.0_mac_64-bit.tar.gz"
      sha256 "b2e859dcf0fbfacd0c4e065f458da66a933f3ced661f305809251e286d85654a"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.0/saucectl_0.113.0_mac_arm64.tar.gz"
      sha256 "5a23589c555584d0ac8dc7d353b7abf1679be01e92b41ce0ad2a69703f1a3047"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.0/saucectl_0.113.0_linux_64-bit.tar.gz"
      sha256 "55a8c307eb7ec11fe7b66a368e7405b19705f8defe2e70d9997f7464e55dc0af"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.0/saucectl_0.113.0_linux_arm64.tar.gz"
      sha256 "c410b9da475f7cb8a686624a23ac28ad4750a339ed98d7fc66a3bcbb92d248b9"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
