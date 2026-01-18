class Clocks < Formula
  desc "A CLI tool for viewing the time in different timezones"
  homepage "https://github.com/prnvbn/clocks"
  license "MIT"

  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-arm64"
      sha256 "311a3c7895c087bf0252798010ba97ca6a28d6481d7d30291ecf913186cafc86"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-darwin-amd64"
      sha256 "7af2482018e0af00f77a5d83556150db633f5524b019973f1c44a65d5fac2be6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-arm64"
      sha256 "761d2a696f1ef590d9e1b816b86d99fee8f2a4627d4dca97ab3b5ec9101716fe"
    end

    if Hardware::CPU.intel?
      url "https://github.com/prnvbn/clocks/releases/download/v#{version}/clocks-linux-amd64"
      sha256 "15609ff6a86d8257911f50e96c5cf9bac87f00576fed3df9dcaed5d2c3d51b8d"
    end
  end

  def install
    bin.install Dir["clocks-*"].first => "clocks"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clocks version")
  end

  livecheck do
    url :stable
    strategy :github_latest
  end
end
