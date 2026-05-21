class Grpcexp < Formula
  desc "Interactive explorer for interacting with gRPC servers (TUI on top of grpcurl)"
  homepage "https://github.com/prnvbn/grpcexp"
  license "MIT"

  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-arm64"
      sha256 "e2333cc0039fa9c56be57e3ea51dc8dc9ef8603628d6f96d64cbbbcf845430ad"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-amd64"
      sha256 "205db627e587cf97fa85db1fce22be33d7144bd62b697d9181a7d5af8ca31486"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-arm64"
      sha256 "754eefbdfee63c513328956e3471bc84bdfea48dae7cfb5f5ea83026319a7e7e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-amd64"
      sha256 "6e4f4125eeef6e6f5c3934bd1766707ccdc15eecd8ef4a5bcd447f0de9dee7c1"
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
