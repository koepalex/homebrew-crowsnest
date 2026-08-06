cask "crowsnestmqtt" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "751c497aaa6300c471043a18b6416afa74ecad338efe88f8022b05ada95d6383",
         intel: "36c7075d810ef8983227d8c65b34e632094f4809fa2f4932d3c9c034e65b30da"

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
