class Bus < Formula
  desc "simple CLI tool to check bus arrivals in London"
  homepage "https://github.com/prnvbn/bus"
  license "MIT"

  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-arm64"
      sha256 "87b06fac35eca73c92e631d256d16e31f4914f8b64d0594624ff1516bf06a707"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-amd64"
      sha256 "a54b72bc17f6e3adb8c409e1e8d293225d5a91454769bc18e33d0fed17d9bf4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-arm64"
      sha256 "f93024e7cad75e734a3a715094378e0f8659b0831410dfca7a06f2a6397f73c4"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-amd64"
      sha256 "62ff895e222e4e027dd3c07ec91ff02b012f03565daa9b496541f348e74254f5"
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
