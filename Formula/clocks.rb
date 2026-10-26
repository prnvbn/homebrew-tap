class Clocks < Formula
  desc "A CLI tool for viewing the time in different timezones"
  homepage "https://github.com/prnvbn/clocks"
  license "MIT"

  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-arm64"
      sha256 "3bb6c6bf2909b4b8ca5427bf5c3b71e2ee51fc9df4ebd750a0fde41b6825d1c1"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-amd64"
      sha256 "b5906c250d8f6e5a279ae24bb5423723e0b7bea2ab4ce933e13b18e35e56f556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-arm64"
      sha256 "93a299e81c455588e888280370d61f7798f0ac1ce5ec2789871d41b475c3298d"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-amd64"
      sha256 "a4fba8b842497356f4b05a8c93b96ddf0b7ccdf6b0a2f9c703db6b28c38787d2"
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
