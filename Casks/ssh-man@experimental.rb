cask "ssh-man@experimental" do
  version "1.10.0"
  sha256 "b673ac458ea75c788cdd61c1cf818d1759bb0d3443df3b6f43bc1e137b4a9760"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.10.0/ssh-man.dmg"
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
