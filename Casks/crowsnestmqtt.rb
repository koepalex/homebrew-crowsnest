cask "crowsnestmqtt" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "45f3b0987ca9362585365b2c3a893a9c5cbd0f0b68ba8504cff650c7f5883d36",
         intel: "adc1ad57e1fb370fad7cdafe33c3531181c1c419e267d11cf547c9cd0b6f0d37"

  url "https://github.com/koepalex/Crow-s-Nest-MQTT/releases/download/#{version}/crows-nest-mqtt-osx-#{arch}-#{version}.dmg"
  name "Crow's Nest MQTT"
  desc "MQTT client for browsing topic hierarchies and message payloads"
  homepage "https://github.com/koepalex/Crow-s-Nest-MQTT"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "CrowsNestMQTT.app"

  zap trash: [
    "~/Library/Application Support/CrowsNestMQTT",
    "~/Library/Logs/CrowsNestMQTT",
    "~/Library/Preferences/com.koepalex.crowsnestmqtt.plist",
    "~/Library/Saved Application State/com.koepalex.crowsnestmqtt.savedState",
  ]
end
