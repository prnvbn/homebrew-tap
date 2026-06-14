class ProtocGenSbexml < Formula
  desc "protoc plugin that generates SBE XML"
  homepage "https://github.com/prnvbn/protoc-gen-sbexml"
  license "MIT"

  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-arm64"
      sha256 "de90692b28ed347ed870e1fdc7e249986db7529ca8f0660f9bbdc1fa36eb34bb"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-amd64"
      sha256 "bcf31bda16a5ea75b825ed9ccbc0c6960a77c92e642029d1b36d22584694aa6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-arm64"
      sha256 "8662219c4c88080637cd9e342c0b28b6440be4d566ea09c8637d4196820a98ac"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-amd64"
      sha256 "269b62f3dc55e42f6ac39cb266f0fb6c4a0e5e908ffb7637a9ab55a490519f58"
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
