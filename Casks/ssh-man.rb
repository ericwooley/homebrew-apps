cask "ssh-man" do
  version "1.2.3"
  sha256 "129bc513ea92e98755d0599734409037b049fe4e92b348eb354e2389a4e85302"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.2.3/ssh-man.dmg"
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
