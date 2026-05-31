class Grpcexp < Formula
  desc "Interactive explorer for interacting with gRPC servers (TUI on top of grpcurl)"
  homepage "https://github.com/prnvbn/grpcexp"
  license "MIT"

  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-arm64"
      sha256 "1861de97782152fbacf244aa61a8b70d55b6085d7f130a3741c833821d0c2f67"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-amd64"
      sha256 "81a832982b4b88ef5d52e55a858562273fde8c5cda2c0791c82a33db778d4f13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-arm64"
      sha256 "aba8e2806b1f03c056bf3f0a65e22db80930aa19094a7880df1ef7a9257e7cf0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-amd64"
      sha256 "95c7aa7d99432f974a6ed98df87207fd5657f40b799ec01c0a1ad45fb5693344"
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
