cask "keyless" do
  version "1.0.0"
  sha256 "75cbdbb38d9588e2b1367311f0732b78a48f4f707919a7bef831c4ec53340437"

  url "https://cdn.flattro.bg/keyless/Keyless-#{version}.dmg",
      verified: "cdn.flattro.bg/keyless/"
  name "Keyless"
  desc "Ultra-lightweight offline voice dictation for terminals and AI agents"
  homepage "https://usekeyless.com/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Keyless.app"

  zap trash: [
    "~/Library/Application Support/Keyless",
    "~/Library/Caches/com.usekeyless.app",
    "~/Library/Preferences/com.usekeyless.app.plist",
  ]
end
