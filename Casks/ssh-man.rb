cask "ssh-man" do
  version "1.0.12"
  sha256 "f26b76d6d3dd771e2d47ae45e035fe98a439123273903fc5c71582fe3d9d67a5"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.12/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
