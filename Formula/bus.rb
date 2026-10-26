class Bus < Formula
  desc "simple CLI tool to check bus arrivals in London"
  homepage "https://github.com/prnvbn/bus"
  license "MIT"

  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-arm64"
      sha256 "44ff921e1b7ff9e8435f8a6a38de3493fb8484b0177aff692378383d2f590859"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-amd64"
      sha256 "d074448b3976b620ae2144b90214e1b8c3401a25a06ce791b7eb1e004d8e7da3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-arm64"
      sha256 "c3ca805ada45116b4a7b03043222cb2f8669834cafca663e366ff98ddc773d79"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-amd64"
      sha256 "143de017ac29d147638028bde468fa3e42c1e78aa39493cf01ac92052b0b9776"
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
