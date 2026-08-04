class Idgen < Formula
  desc "cli tool to create uuids"
  homepage "https://github.com/prnvbn/idgen"

  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-arm64"
      sha256 "471007859fdc3772154af65a7e94c0ce853b22515460fc5dc8e6f5b4a47cf0cc"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-amd64"
      sha256 "cad09f110f494496097daa73e0bd24737612799d0a454012129c593fc894c0dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-arm64"
      sha256 "a478f56702fd107b83ee52e29c03e653a671867167eab3bce756c05387bd29f7"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-amd64"
      sha256 "a43a02aa804ed3a02fca6e721e5133b069f5106a331bffdacbbb0e37b60e106a"
    end
  end

  def install
    bin.install Dir["idgen-*"].first => "idgen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idgen --version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
