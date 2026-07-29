cask "ssh-man@experimental" do
  version "1.10.3"
  sha256 "00b7c566ede11332d2fcc2ab528b6eebad0d07795e0878df0022ea1e067de793"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.10.3/ssh-man.dmg"
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
