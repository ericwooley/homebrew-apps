# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "82a29c837b3cba8f62cdf6f71d8a46cabd90b80fa0c38487a28a2c876de76121"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "04afc7aea6dc48ce0178b80134d1e3fc430b3c338ae9a876366f6faa68e263ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "e8e2db49b368a2472fd704087f70ca76196af64a2b70377ee1a0d242e9c8dfdd"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "1356b93f47ffb61edcf4308a38dc6f689544c07d3fadeedef5ecf488dc3af821"
    end
  end

  def install
    bin.install "proc-man"
  end

  def post_install
    return unless quiet_system bin/"proc-man", "daemon", "status"

    system bin/"proc-man", "daemon", "install", "--now"
  end

  def caveats
    <<~EOS
      Start the proc-man user service after installation:
        proc-man daemon install --now
      The Formula reloads a running proc-man user service after upgrades.
      Run `proc-man daemon uninstall` before `brew uninstall proc-man`.
    EOS
  end

  test do
    system bin/"proc-man", "--help"
  end
end
