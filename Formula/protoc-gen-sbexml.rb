class ProtocGenSbexml < Formula
  desc "protoc plugin that generates SBE XML"
  homepage "https://github.com/prnvbn/protoc-gen-sbexml"
  license "MIT"

  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-arm64"
      sha256 "1424dfe2e631f5aef104297f89a50a9ae8444c95704d4420f4d071a0694ee6e8"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-amd64"
      sha256 "f45f03318e90138929167275f4bbf5d254971044cc946a0e0d0ac183d19103ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-arm64"
      sha256 "e8f6eb968bb6f94e3248869bac6dd7528e0c26dc8ded38e645bc0d38232de4da"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-amd64"
      sha256 "038deabe52778c0598bc47a709520668ec4aaa41106810e24dc6ad83cdb1ae56"
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
