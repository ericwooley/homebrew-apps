cask "ssh-man" do
  version "1.0.6"
  sha256 "f750d1c8617ae3786de1ba5eab93eb94066297bf91b59eea705be23d88ef7062"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.6/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
