class Fastai < Formula
  desc "Non-interactive autonomous CLI coding agent"
  homepage "https://github.com/ericwooley/fastAI"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.0/fastAI_0.1.0_darwin_arm64.tar.gz"
      sha256 "634e3f5b8b6c627bfe62910200f79482bd9e1bb03de9dc4f9cca206b5e1ddaed"
    else
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.0/fastAI_0.1.0_darwin_amd64.tar.gz"
      sha256 "657e5d7b888dc2311230cd1f53ef19b3697061464ace458d28131e40f29ef7fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.0/fastAI_0.1.0_linux_arm64.tar.gz"
      sha256 "2d04c5dbf124ccb85dba4ba26edaefb10728fd6ad98965df4058a989a47c99b9"
    else
      url "https://github.com/ericwooley/fastAI/releases/download/v0.1.0/fastAI_0.1.0_linux_amd64.tar.gz"
      sha256 "efddffc1f1f4fc2537a18e0ce5d073fc49df23e957d687b1fbc286288a52ae0d"
    end
  end

  def install
    bin.install "fastAI"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fastAI --version")
  end
end
