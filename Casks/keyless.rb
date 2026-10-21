cask "keyless" do
  version "1.0.1"
  sha256 "YOUR_HASH"

  url "https://cdn.flattro.bg/keyless/Keyless-#{version}.dmg",
      verified: "cdn.flattro.bg/keyless/"
  name "Keyless"
  desc "Ultra-lightweight offline voice dictation for terminals and AI agents"
  homepage "https://usekeyless.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Keyless.app"

  zap trash: [
    "~/Library/Application Support/Keyless",
    "~/Library/Caches/com.usekeyless.app",
    "~/Library/Preferences/com.usekeyless.app.plist",
  ]
end

