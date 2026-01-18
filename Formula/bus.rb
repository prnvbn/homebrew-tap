class Bus < Formula
  desc "simple CLI tool to check bus arrivals in London"
  homepage "https://github.com/prnvbn/bus"
  license "MIT"

  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-arm64"
      sha256 "218200e82acaffa0ea7db00b8f7a0fcb2a5ce3ca74ca214a827388d35ebd867a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-darwin-amd64"
      sha256 "488e9d773f9907acd87529be0ba067270a667049a1c738e53b24ecb35482296a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-arm64"
      sha256 "1c27ae28cfd0c87fcde65248a6428b1ebc276775247059927f9ad85d598e5a4c"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/bus/releases/download/v#{version}/bus-linux-amd64"
      sha256 "efc9f11ea2be824adb355f8eb3497f2fb66e3fa49b88937f34b21fa5641c4d00"
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
