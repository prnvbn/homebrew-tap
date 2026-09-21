class Grpcexp < Formula
  desc "Interactive explorer for interacting with gRPC servers (TUI on top of grpcurl)"
  homepage "https://github.com/prnvbn/grpcexp"
  license "MIT"

  version "0.0.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-arm64"
      sha256 "21629aaf0dbae483d1c863cc390ff7873ec564aa030e0771b29f31374b70df74"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-amd64"
      sha256 "8194b19171a13efad0ff9b2f68ab95982a83c71e42a4f4a2a5a6507d89a31ca6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-arm64"
      sha256 "02ed3279a1e52a610601b1a527077094ab43b254f641ce109d8e564f29e1e55e"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-amd64"
      sha256 "223097a941e4d95bb781f9f1274e5a1ac6a615265591630ddd6ae53e47f05b72"
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
