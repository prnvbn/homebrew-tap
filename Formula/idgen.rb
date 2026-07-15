class Idgen < Formula
  desc "cli tool to create uuids"
  homepage "https://github.com/prnvbn/idgen"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-arm64"
      sha256 "1eb79af3563522d69b36f4283cf676de452df196134fcb4f0bbbdb59fcb585b0"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-amd64"
      sha256 "ad98439b2757314e56b0a8b58559137d829687fb122b8b8adb034ee003d49e9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-arm64"
      sha256 "f6b5ec073885e489867527351cb04ef462ccd3d55a844df7a7a8e86e9d783db5"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-amd64"
      sha256 "bf222302e1bd80bf68c4474f33b8c66ccc35c341427c69823146414a51a328c0"
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
