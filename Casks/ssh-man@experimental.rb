cask "ssh-man@experimental" do
  version "1.13.0"
  sha256 "0930667c8e31baeca73e1238790aa45a83d66bdda51e7dc30d9d0d1eeef315c4"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.13.0/ssh-man.dmg"
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
