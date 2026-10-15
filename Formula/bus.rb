class Bus < Formula
  desc "simple CLI tool to check bus arrivals in London"
  homepage "https://github.com/prnvbn/bus"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-arm64"
      sha256 "a3b651148018b1bf610403b7c4f40d76faa86852d96624570d3723c73196ca8e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-amd64"
      sha256 "97f3f509865fb2eb03fe4b813edb189de8472413329f7890d8f164bc31d3e2c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-arm64"
      sha256 "90c4cdd8771bc372c4851b73ee18b87c818f0c9ca5cf8c5dc6aec6cd97429a5e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-amd64"
      sha256 "46e85f707bc0f2b6261c847b22dd70cb9e250580c6a31b0847bae343c2ebd794"
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
