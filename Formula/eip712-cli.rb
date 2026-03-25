class Eip712Cli < Formula
  desc "A command-line tool for working with EIP-712 typed data"
  homepage "https://github.com/MaximFischuk/eip712-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3079f7b1fc9e8786c7650cdf6efa29395237ecaac542773c4eace51018d2f036"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ca1bfdf8d15d812628fde2bb2576cc525ca66948b06bed99ce5997f6515a10b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64178bc87a9a231b0bac1f7fac64ee8f531b79688c80c64ac800489371e4cf8f"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5808fcb383db4c5f5c14853ab3f5422b6b1e7b191129ed5ac03e45cef38ffd79"
    end
  end

  def install
    bin.install "eip712"
  end

  test do
    assert_match "eip712", shell_output("#{bin}/eip712 --version")
  end
end
