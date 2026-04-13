cask "ssh-man" do
  version "1.0.9"
  sha256 "e5103cbbf9bcca9fdef37e8e7707322a78532e571c7ed356435d0f0f65507de5"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.9/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
