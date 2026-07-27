cask "ssh-man@experimental" do
  version "1.10.2"
  sha256 "4fe50207c2ef9121db6f5807ef5d05070f052a9779f0117f897bd46f10e20310"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.10.2/ssh-man.dmg"
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
