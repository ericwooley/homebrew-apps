cask "ssh-man" do
  version "1.5.0"
  sha256 "6db89ca136f8460ba5b65fcda5c0e714a95ab238e9f1d44e7d8439b8ad1447a6"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.5.0/ssh-man.dmg"
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
