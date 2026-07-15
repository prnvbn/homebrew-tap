class Clocks < Formula
  desc "A CLI tool for viewing the time in different timezones"
  homepage "https://github.com/prnvbn/clocks"
  license "MIT"

  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-arm64"
      sha256 "e06ade9dff3d7e0e0fbd7701a7651f8f367807c1565fd7b05bc43b331f9d38b1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-amd64"
      sha256 "18412c99fa6bea2d04aea97394cf2775963b5deeb4b19b89fe33c74837a435ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-arm64"
      sha256 "37ce78846a3644a9b8fa60153091d451fac7efc556e3ae4dd8423a1bbfb95a99"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-amd64"
      sha256 "1f01d992a360aef6fee2432679a5d42e7dee69d96752809056578832a97cbbba"
    end
  end

  def install
    bin.install Dir["clocks-*"].first => "clocks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clocks version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
