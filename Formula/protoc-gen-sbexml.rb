class ProtocGenSbexml < Formula
  desc "protoc plugin that generates SBE XML"
  homepage "https://github.com/prnvbn/protoc-gen-sbexml"
  license "MIT"

  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["protoc-gen-sbexml-*"].first => "protoc-gen-sbexml"
  end

  test do
    assert_path_exists bin/"protoc-gen-sbexml"
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
