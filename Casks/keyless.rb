cask "keyless" do
  version "1.0.1"
  sha256 "cf010473445576b0357005d0dc8a16f11ce49d63c98362aedf8803b9cfa9e23a"

  url "https://cdn.flattro.bg/keyless/Keyless-#{version}.dmg"
  name "Keyless"
  desc "Ultra-lightweight offline voice dictation for terminals and AI agents"
  homepage "https://usekeyless.com/"

  livecheck do
    url "https://cdn.flattro.bg/keyless/"
    regex(/href=.*?Keyless[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Keyless.app"

  zap trash: [
    "~/Library/Application Support/Keyless",
    "~/Library/Caches/com.usekeyless.app",
    "~/Library/Preferences/com.usekeyless.app.plist",
  ]
end

