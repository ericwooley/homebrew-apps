# frozen_string_literal: true

class ProcMan < Formula
  desc "Manage local development processes and logs"
  homepage "https://github.com/ericwooley/proc-man"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_amd64.tar.gz"
      sha256 "eccb3af26438c8fea663f53576c2c9610126b7786b7dfb94cd90608be4f20521"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_darwin_arm64.tar.gz"
      sha256 "1082446a949de640e330d6e5d8b1e1238efb3981ebab5f831f300d9167c8485a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_amd64.tar.gz"
      sha256 "e7d2c69da1e579ceb93af0d24eb5e3277c9fad0e1d8a48a62974db987931d1f6"
    end
    on_arm do
      url "https://github.com/ericwooley/proc-man/releases/download/v#{version}/proc-man_#{version}_linux_arm64.tar.gz"
      sha256 "bad25b8f33f209f35a69a79f2789415518c784801c829078cc696f660df86060"
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
