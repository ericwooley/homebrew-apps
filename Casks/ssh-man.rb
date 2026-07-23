cask "ssh-man" do
  version "1.2.4"
  sha256 "3815dd080510f37c14517447819c1adbedf502f6d27f79bf4177b59368ec011a"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.2.4/ssh-man.dmg"
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
