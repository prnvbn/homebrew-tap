class Clocks < Formula
  desc "A CLI tool for viewing the time in different timezones"
  homepage "https://github.com/prnvbn/clocks"
  license "MIT"

  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-arm64"
      sha256 "53236f1ebc92e8d1ab137b966c2dd0ae56bfc1d60f351ebd3ee0bfe93750aaa1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-amd64"
      sha256 "56977772bf65edc5bf7ea9f3723da95afc9920c45285b49c5a3527983c1d408a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-arm64"
      sha256 "68fe14d5cd0300ae69f0e1fe80ffda381c1701034801125637031784dab8a056"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-amd64"
      sha256 "7d700cad10059f90fe0511e00058ebcaa882c1420adcfc96916dd2fc9d08edba"
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
