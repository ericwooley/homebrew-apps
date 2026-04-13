cask "ssh-man" do
  version "1.0.10"
  sha256 "7fef997785e509c70dd90f628c1928c57dca9e565698f5528691896f1ff0dac7"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.10/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies."
  homepage "https://github.com/ericwooley/ssh-man"

  app "ssh-man.app"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
