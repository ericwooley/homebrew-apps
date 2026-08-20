cask "ssh-man@experimental" do
  version "1.17.1"
  sha256 "ae47a5c8bb1515c4ffab18b07ba205d24f1e89b335efb93be50e154faad96ad8"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.17.1/ssh-man.dmg"
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
