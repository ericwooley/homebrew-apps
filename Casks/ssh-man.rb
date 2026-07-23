cask "ssh-man" do
  version "1.2.2"
  sha256 "825010b5e0f490cbee2fd8cfc0c7858abafd72e3a8bda9dfdf4ce63ef814b432"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.2.2/ssh-man.dmg"
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
