# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "ec33e9035938fc0e66769a5c038afec6b4b87fda1ca2da7dea2f623c0fb29b11"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "a42aeca9bf62c088d66784e39038072d1abd72f40e770dbb22fc60e2e4b3a730"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "81d9338f6e1ac74cd63d6106da28004925855c28bd7c0230b8c875382e843342"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "95f8fe972df4c921c43be2520b455e203b76bd32452d363cb7086fe386c533ca"
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
