# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "c0ed303f56252e2210b07323485d05d4d6704017c81906a0b78e72bfd7bee402"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "fe1932aab93c4ebc39de8d3b5bde7c0f4e2304ace2d7934b2eac00d990de765c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "347051a105d7c61742ab7d29325de6db88c3c8d7179f579d3c08cf0e059564a5"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "4d4d334aadcc74a1a8beda0d349562a2a790923c8a01c39528a71cd74d13d96b"
    end
  end

  def install
    bin.install "proc-man"
  end

  def caveats
    <<~EOS
      Start or update the proc-man user service after installation or upgrade:
        proc-man daemon install --now
      Run `proc-man daemon uninstall` before `brew uninstall proc-man`.
    EOS
  end

  test do
    system bin/"proc-man", "--help"
  end
end
