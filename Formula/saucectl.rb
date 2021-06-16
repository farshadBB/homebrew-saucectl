# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Saucectl < Formula
  desc "Saucectl is a command-line interface to run testrunner tests"
  homepage "https://saucelabs.com/"
  version "0.48.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.4/saucectl_0.48.4_mac_64-bit.tar.gz"
      sha256 "956299101c3f4435cada5199a68740a4865e38ecf34f84aa54382be67044046e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.4/saucectl_0.48.4_mac_arm64.tar.gz"
      sha256 "75e6c217205fec7ee4987f909332788ec9507442778c37077dc5cf1aedf814c9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.4/saucectl_0.48.4_linux_64-bit.tar.gz"
      sha256 "76844d5fe6a0afbf4e6987f943c9a73303e2e352386b93f720709376b07de36f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/saucelabs/saucectl/releases/download/v0.48.4/saucectl_0.48.4_linux_arm64.tar.gz"
      sha256 "8e1ba763905ede40c4942a0d949645e2a0179fe304caa61bf95ed6d94f9d5624"
    end
  end

  def install
    bin.install "saucectl"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
