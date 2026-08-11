# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.1.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "263e54312d6191b8dd7770377a832926c40e4837f37e25a585e6e31658be78c8"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "750fd60d70361a509b6cece73731aa8f9f5d64886db573313e10f4ccf11794bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "908df2b6e8512a4fc878128f142603284fd38d6c42f95bfb19340aacbb835aaf"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "74d7529d41f78b67479860f25bd1433c786f99514e85e6f8137f0f6832b8b6a5"
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
