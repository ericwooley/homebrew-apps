class Fastai < Formula
  desc "Non-interactive autonomous CLI coding agent"
  homepage "https://github.com/ericwooley/fastAI"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.1/fastAI_0.1.1_darwin_arm64.tar.gz"
      sha256 "dae7bc5a37577aae11a92a5c431caa600e74e23e97c97e4e48c5e0648ab30503"
    else
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.1/fastAI_0.1.1_darwin_amd64.tar.gz"
      sha256 "baa3663bf4b0cd3ca3af48b7affb611d893aad74f2d1eece5e76d5125290455b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.1/fastAI_0.1.1_linux_arm64.tar.gz"
      sha256 "fe3b6881759db9c98120582abb669877dfe80050366fe318ef84198ac29bfb9f"
    else
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.1/fastAI_0.1.1_linux_amd64.tar.gz"
      sha256 "2e4e7f44862b515f0ae71d6372d79304decb0e5b99644ebf01ffdad3c91744d9"
    end
  end

  def install
    bin.install "fastAI"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastAI --version")
  end
end
