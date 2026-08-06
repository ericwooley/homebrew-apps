cask "ssh-man@experimental" do
  version "1.16.1"
  sha256 "e68f4a3280cbfbc9fb75d9350ee71a58272123d8ce5c0982206cf3729f193d52"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.16.1/ssh-man.dmg"
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
