cask "ssh-man" do
  version "1.0.16"
  sha256 "5cbec9668fc61b7a6936f9f2f405a1dbbe3eb4f1f6db2d53efd7760a5c1d84eb"

  url "https://github.com/ericwooley/ssh-man/releases/download/1.0.16/ssh-man.dmg"
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
