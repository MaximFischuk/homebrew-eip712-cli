class Eip712Cli < Formula
  desc "A command-line tool for working with EIP-712 typed data"
  homepage "https://github.com/MaximFischuk/eip712-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # aarch64-apple-darwin
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # x86_64-apple-darwin
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # aarch64-unknown-linux-gnu
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # x86_64-unknown-linux-gnu
    end
  end

  def install
    bin.install "eip712"
  end

  test do
    assert_match "eip712", shell_output("#{bin}/eip712 --version")
  end
end
