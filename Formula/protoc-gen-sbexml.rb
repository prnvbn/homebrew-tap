class ProtocGenSbexml < Formula
  desc "protoc plugin that generates SBE XML"
  homepage "https://github.com/prnvbn/protoc-gen-sbexml"
  license "MIT"

  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-arm64"
      sha256 "ac3ab44624014eea22fe363a7650b1856349a2e1750ba341cd120fdae844e2ee"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-darwin-amd64"
      sha256 "fc7c0c1d9949ed713d16bcee1a7d014744d3c1b7ffc788504a8b35c4f7a748da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-arm64"
      sha256 "631bdd40a86158934e8a93f866b95abd02bbca5ba74807e302c60279faac4940"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/protoc-gen-sbexml/releases/download/v#{version}/protoc-gen-sbexml-linux-amd64"
      sha256 "ce8dd00ea7fe786f9e750da96395d6377794c120b24dc6700241630b6013585a"
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
