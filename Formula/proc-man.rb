# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "f8015f8008aae222b8889cd44fc5ea30a96fe06504539da1b4cc0ff5fdebb8cd"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "6caa2aefdd404add70edd2d38e416e250b8f6eb65a104d6d5b41ef3e20d17838"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "0aa9528d82da90c46c51863f1be007459e1a81f59751ca39489eb17338beb3da"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "998fc90851ea8a923c7dfd5a714938866830d55b925b301a21d2b4e72f0a77c6"
    end
  end

  def install
    bin.install "proc-man"
  end

  def post_install
    system bin/"proc-man", "daemon", "install", "--now"
  end

  def caveats
    <<~EOS
      proc-man installs and starts its user service during installation.
      Run `proc-man daemon uninstall` before `brew uninstall proc-man`.
    EOS
  end

  test do
    system bin/"proc-man", "--help"
  end
end
