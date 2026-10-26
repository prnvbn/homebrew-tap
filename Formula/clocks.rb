class Clocks < Formula
  desc "A CLI tool for viewing the time in different timezones"
  homepage "https://github.com/prnvbn/clocks"
  license "MIT"

  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-arm64"
      sha256 "204f2d26b2e642cbefecead485f8b12106c784ccea335c4f09632fef0844ce0c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-amd64"
      sha256 "a9f0fe1e68693ed4a5e426980ff8a20371855834c0ca38e48fe17652c555f931"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-arm64"
      sha256 "5cf0a1ad245bb0e15178d893f60f85bb05003c1200c0b4c46ecad4c473a686bd"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-amd64"
      sha256 "cf024c586309b579e542365b54697c842b902931d74e30effdc0712510cb92f1"
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
