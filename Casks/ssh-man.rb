cask "ssh-man" do
  version "1.3.0"
  sha256 "9408b198f8ffe78977debd7b3c179a9018688a4053f6465bb0e9e0ed514133f9"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.3.0/ssh-man.dmg"
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
