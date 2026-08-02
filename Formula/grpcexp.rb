class Grpcexp < Formula
  desc "Interactive explorer for interacting with gRPC servers (TUI on top of grpcurl)"
  homepage "https://github.com/prnvbn/grpcexp"
  license "MIT"

  version "0.0.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-arm64"
      sha256 "b071c833417c4468dc5b7ff16e48d530c28c2ad2e666b44621ae669f71ad87bd"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-darwin-amd64"
      sha256 "0c59b345d1ae52938f65a36e646f98bc4bf0f78c8272c45838340ac633ff4bbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-arm64"
      sha256 "ed74f98c9714f70cc4662a07cbec2d396c65439b9b1c0b9e666d7fb9ccbd1165"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/grpcexp/releases/download/v#{version}/grpcexp-linux-amd64"
      sha256 "1c8491e50786cf659733c226d6712e59160d7c18619d9cb473a6e1c92ec84400"
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
