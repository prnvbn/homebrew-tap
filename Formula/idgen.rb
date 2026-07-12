class Idgen < Formula
  desc "cli tool to create uuids"
  homepage "https://github.com/prnvbn/idgen"

  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-arm64"
      sha256 "f97d2fcfa30e81b967a413b741c9ae085e5b2e25883398308fdc800199e8b049"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-darwin-amd64"
      sha256 "b8d388475770262a129f44154718dc84f37c7572ca43ad4466179c41b3558e4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-arm64"
      sha256 "78279993755815b75ffaf3992ed0b44bbf4a73b2663c436911dc9d05e564c584"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/idgen/releases/download/v#{version}/idgen-linux-amd64"
      sha256 "96e1681bd6f1812fb04888a31ba428e22641b74898be07e514be0a5e8f8c1d7c"
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
