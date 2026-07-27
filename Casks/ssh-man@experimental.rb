cask "ssh-man@experimental" do
  version "1.9.0"
  sha256 "ad7aa70c52f92a26d51dcb177c6602577c223b92b4f8cc87f7c0c952bd784fab"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.9.0/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies"
  homepage "https://github.com/ericwooley/ssh-man"

  conflicts_with cask: "ssh-man"
  depends_on :macos

  app "ssh-man.app"
  binary "#{appdir}/ssh-man.app/Contents/MacOS/ssh-man"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
    "~/Library/Preferences/tech.moonpixels.ssh-man.plist",
  ]
end
