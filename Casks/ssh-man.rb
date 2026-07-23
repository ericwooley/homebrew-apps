cask "ssh-man" do
  version "1.2.1"
  sha256 "98c6739a057d1fc8f6a5aa9dd4088912152f17e8ff020cd34400a3053f803b28"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.2.1/ssh-man.dmg"
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
