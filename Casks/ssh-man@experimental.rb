cask "ssh-man@experimental" do
  version "1.11.0"
  sha256 "bf267d5187a724a4325d4111a8c4a9173304f77659bf00618af0e572bd5fc67a"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.11.0/ssh-man.dmg"
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
