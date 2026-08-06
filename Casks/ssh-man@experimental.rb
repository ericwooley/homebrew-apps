cask "ssh-man@experimental" do
  version "1.16.0"
  sha256 "2249477e3abe6fd99e3e0ae15afbca2217aa328fe26ca38421264dfbe9ef8f1d"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.16.0/ssh-man.dmg"
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
