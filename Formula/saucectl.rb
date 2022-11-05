# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.113.1-alpha.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.2/saucectl_0.113.1-alpha.2_mac_64-bit.tar.gz"
      sha256 "d51db4798d8edeb67b1a4ceaad517205384d1ba7a7960c11993535f75183a8b5"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.2/saucectl_0.113.1-alpha.2_mac_arm64.tar.gz"
      sha256 "943b3645ea01aef2789eab60cb2fa9761736572aa0ca578832002337defccdf1"

      def install
        bin.install "saucectl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.2/saucectl_0.113.1-alpha.2_linux_64-bit.tar.gz"
      sha256 "45c073d8f36595966d13763a018e7a9bd40449ba18be0516b5ed224ae8a6c7de"

      def install
        bin.install "saucectl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.113.1-alpha.2/saucectl_0.113.1-alpha.2_linux_arm64.tar.gz"
      sha256 "2174eb881fc1f8d7cfd2dbce4f7b921e16391a4d954970750fd809b01050b2b6"

      def install
        bin.install "saucectl"
      end
    end
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
