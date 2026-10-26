class Bus < Formula
  desc "simple CLI tool to check bus arrivals in London"
  homepage "https://github.com/prnvbn/bus"
  license "MIT"

  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-arm64"
      sha256 "5d043f4d1ceb578619973842ca34b5deffa9d265e8a1465292900cf2aa19c8c6"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-amd64"
      sha256 "01772eac68f5ad080709cac799fae98ef023834175e9c28f2a910ccba23dc7bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-arm64"
      sha256 "29625a173ad103927a92556140f0404f5a8cbb4274312a8026238f71e9a49ab0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-amd64"
      sha256 "ea889b4a09136a6af3f89a3d19cfee1cfe9457e13a7aefa5dc683bf09be9d952"
    end
  end

  def install
    bin.install Dir["bus-*"].first => "bus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bus version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
