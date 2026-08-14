# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "6b6e89571e423085fa8d19b5e0a8016229bff0a3f643802631c4c42a17b8066b"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "a62c7bae4105ff6d5e23aa1473e8516269b28cfd2fa1cbea969501b577075ff8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "a76671c92d895e0cb1a4f35055eccf00deec588927f504dd633d945ed3e3003e"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "7510840b952ad6591f51834cdbaea6bee8c809078d72d219b37e5baa40f41c0a"
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
