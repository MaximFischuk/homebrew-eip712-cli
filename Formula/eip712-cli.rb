class Eip712Cli < Formula
  desc "A command-line tool for working with EIP-712 typed data"
  homepage "https://github.com/MaximFischuk/eip712-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "55cc554cc2c1c292f10e3110eaccf5c1bfff839aae33e7cba39264fd1c26ccb4"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6de0547c31e8b52aa33b733cf67572f4105dd8d81c3184cdf661fee585c825d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cc029123124e3b02d1e73fe55c101585359f975e775cef4b72c3e17e5a6fd64"
    else
      url "https://github.com/MaximFischuk/eip712-cli/releases/download/v#{version}/eip712-cli-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2ffa85b6712ca99922a50c3360f21ce1ee660e127837fc3400552543334ac128"
    end
  end

  def install
    bin.install "eip712"
  end

  test do
    assert_match "eip712", shell_output("#{bin}/eip712 --version")
  end
end
