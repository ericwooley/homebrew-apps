cask "ssh-man@experimental" do
  version "1.15.0"
  sha256 "a477cc8cfcb146433c371fc86106dfe01844c14cd640a09d78142a18bef2dbf5"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.15.0/ssh-man.dmg"
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
