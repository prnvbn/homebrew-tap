class Idgen < Formula
  desc "cli tool to create uuids"
  homepage "https://github.com/prnvbn/idgen"

  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-arm64"
      sha256 "a9b3328313f794e0e5a6e214b5bec1dc2a6a7904f5dcfd2ed73a237c27d8dd77"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-amd64"
      sha256 "f5ee994f4e5d74a113c4b41b04845dacc3d3e727d9b15145cb8dae9a9b8ddfe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-arm64"
      sha256 "07f6f638a9dc1a8db093d91d3ebdd9b4885276ab8d91a9d8ed72df85a8959ca5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-amd64"
      sha256 "55b32bbb7fecfce9e21c60020d45da02b7a8338c8538e35e7f9c8c480b71345a"
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
