cask "ssh-man" do
  version "1.1.0"
  sha256 "2385382811d9ae376071b894622286a2cf91d5f234ced4a0d166e6eeeea1e64f"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.1.0/ssh-man.dmg"
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
