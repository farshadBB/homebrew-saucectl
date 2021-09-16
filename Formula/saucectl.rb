# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.66.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.1/saucectl_0.66.1_mac_64-bit.tar.gz"
      sha256 "48b2226529c729e0bc3364d856169a4ea4438e215b835fe1fdb1e1a225ca69f9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.1/saucectl_0.66.1_mac_arm64.tar.gz"
      sha256 "89e7b85ac0acafb08705c90891f934a04d1cdd9cbc2ceaf80a5910a8387d7f77"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.1/saucectl_0.66.1_linux_64-bit.tar.gz"
      sha256 "900458d4d132fd922abc5a20aad488b41a4b0fa14ed49e02c8569a07dae4061c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.66.1/saucectl_0.66.1_linux_arm64.tar.gz"
      sha256 "861b6c8b7712e0d6bc60791924610045234cd06715dcef7b4e8854057de20713"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
