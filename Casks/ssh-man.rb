cask "ssh-man" do
  version "1.2.0"
  sha256 "db52b7b510fbd0b4cd4847f55d4e90c2d855e53c6be8ba47d699d63788471ab5"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.2.0/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies"
  homepage "https://github.com/ericwooley/ssh-man"

  depends_on :macos

  app "ssh-man.app"
  binary "#{appdir}/ssh-man.app/Contents/MacOS/ssh-man"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
    "~/Library/Preferences/tech.moonpixels.ssh-man.plist",
  ]
end
