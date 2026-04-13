cask "ssh-man" do
  version "1.0.11"
  sha256 "7e73c874eb73def021155c8d30f34f42eaad347c8705a29b772c4e5f58692b92"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.11/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
