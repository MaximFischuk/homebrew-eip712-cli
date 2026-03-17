class Eip712Cli < Formula
  desc "A command-line tool for working with EIP-712 typed data"
  homepage "https://github.com/MaximFischuk/eip712-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "bfd9f7b7c917f5c0118322b7a8e2ff020d397a3c867695bcca407e605dc7d6d1"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3e14fef54b125e440dbdfa77dec698e4975c21b8490a366397bb5b7ec798f0d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ad693d7ab7fc92d641efc69ea7e8cc2cb4fbef9142a4bb29cac045124de0131"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e494c057a15dbebeb7a4b6c84870cc5d9ec9050485e02af6bde7cb26c14382fc"
    end
  end

  def install
    bin.install "eip712"
  end

  test do
    assert_match "eip712", shell_output("#{bin}/eip712 --version")
  end
end
