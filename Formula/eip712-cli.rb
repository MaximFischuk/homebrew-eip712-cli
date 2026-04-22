class Eip712Cli < Formula
  desc "A command-line tool for working with EIP-712 typed data"
  homepage "https://github.com/MaximFischuk/eip712-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "620249fd1a865697d0eb9b1d580018db071d236daa337f6ff255f2fffa4d1988"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "57938c57e6a203fc1cb5de38a18755ccd36b4d4675d582b6f1179c455589b4b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e4e7571b7a68f41b8bc1d12e3a022058ea5941de0afc89035fe0066627792f4"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fcdd781c14f12fe68818770ca058ba3f9c65ed4dcf6de1d431bd7c45ecabfbd"
    end
  end

  def install
    bin.install "eip712"
  end

  test do
    assert_match "eip712", shell_output("#{bin}/eip712 --version")
  end
end
