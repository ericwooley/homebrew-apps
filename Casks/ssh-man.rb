cask "ssh-man" do
  version "1.0.0"
  sha256 "REPLACE_WITH_SHA256_HASH"

  url "https://github.com/ericwooley/ssh-man/releases/download/v#{version}/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
