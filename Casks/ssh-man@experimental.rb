cask "ssh-man@experimental" do
  version "1.8.0"
  sha256 "e2935e765622f5f82ce22c958a968b0321cfa701c6cd7c002f9fe41ee464660e"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.8.0/ssh-man.dmg"
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
