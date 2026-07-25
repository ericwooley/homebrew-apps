cask "ssh-man" do
  version "1.4.0"
  sha256 "3898a5cccf86659673e6da7fd04861a253ab54265b88b8cd33a0588ec55b35ab"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.4.0/ssh-man.dmg"
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
