class Idgen < Formula
  desc "cli tool to create uuids"
  homepage "https://github.com/prnvbn/idgen"

  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-arm64"
      sha256 "c515592db5b9e47e1a8281a2ccd35fa439962e758d13812a7a4b522595623fdc"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-amd64"
      sha256 "b40580025437687d1438020bb25f8fbb411d00649f3a925a1b38332606b88cdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-arm64"
      sha256 "a28c31b379fe3b150f63b5522d42b3caaa35e55c870ded1a2d6879f332a2db36"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-amd64"
      sha256 "76e332408cdfcb06d8e2f93dcd2b6e4130d1d52855dc7d990dd1e7fdbc837750"
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
