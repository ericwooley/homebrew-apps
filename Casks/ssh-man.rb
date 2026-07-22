cask "ssh-man" do
  version "1.0.19"
  sha256 "e867769535647504a963951064de214f9ab2cb635b9973f33b3e6c7e6c245a1c"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.19/ssh-man.dmg"
  name "SSH Man"
  desc "Manage your SSH tunnels and SOCKS5 proxies"
  homepage "https://github.com/ericwooley/ssh-man"

  depends_on :macos

  app "ssh-man.app"
  binary "#{appdir}/ssh-man.app/Contents/MacOS/ssh-man"

  zap trash: [
    "~/Library/Application Support/ssh-man",
    "~/Library/Preferences/com.wails.ssh-man.plist",
  ]
end
