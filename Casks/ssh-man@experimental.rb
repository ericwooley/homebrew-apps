cask "ssh-man@experimental" do
  version "1.17.0"
  sha256 "9f306b34a78aa60eefbbf1b2f3418911ba4b86522c26a2193f2786cb04305543"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.17.0/ssh-man.dmg"
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
