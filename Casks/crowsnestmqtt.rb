cask "crowsnestmqtt" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "6cf2a704fb5e593a35ecf0fdc1c0fbab5a025dd047617ab0c6583f25b1a670b9",
         intel: "88c49c280c83d3d58db25285d4f2766b888ac72cefff11ce2820b95aa2812211"

  url "https://github.com/koepalex/Crow-s-Nest-MQTT/releases/download/#{version}/crows-nest-mqtt-osx-#{arch}-#{version}.dmg"
  name "Crow's Nest MQTT"
  desc "MQTT client for browsing topic hierarchies and message payloads"
  homepage "https://github.com/koepalex/Crow-s-Nest-MQTT"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "CrowsNestMQTT.app"

  zap trash: [
    "~/Library/Application Support/CrowsNestMQTT",
    "~/Library/Logs/CrowsNestMQTT",
    "~/Library/Preferences/com.koepalex.crowsnestmqtt.plist",
    "~/Library/Saved Application State/com.koepalex.crowsnestmqtt.savedState",
  ]
end
