class Grpcexp < Formula
  desc "Interactive explorer for interacting with gRPC servers (TUI on top of grpcurl)"
  homepage "https://github.com/prnvbn/grpcexp"
  license "MIT"

  version "0.0.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-arm64"
      sha256 "6068096f66ba4dee5b1e4c9727d78cdc738374dc9fb812767a3456472813409a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-amd64"
      sha256 "338266adfb93445f0d9c58a8c467bea3fe4f79ac2e1cdcfce53b1a2dcc6fce52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-arm64"
      sha256 "ac34098deb8664f6030948341e498b01ee99a27b6caec35899b40682e33ad850"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-amd64"
      sha256 "e61ed3a19c88c2ef731f4ab63e3eda6f22149c79b092cf766eb0c370651c01b8"
    end
  end

  def install
    bin.install Dir["grpcexp-*"].first => "grpcexp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grpcexp version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
