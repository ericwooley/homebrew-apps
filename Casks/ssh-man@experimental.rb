cask "ssh-man@experimental" do
  version "1.10.1"
  sha256 "1b223cbca8913851ff7087fd05adb4959b64f7904cc323466cd37847b809d3bb"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.10.1/ssh-man.dmg"
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
