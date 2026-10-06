cask "crowsnestmqtt" do
  arch arm: "arm64", intel: "x64"

  version "1.2.2"
  sha256 arm:   "0110b6d0ce255c8fde9f43bcbec5349b96cf90c68908fddaef15bd1a381e5b31",
         intel: "d3ba2c804801b30894e26fe8a3bc661f882d235cb1ca1d6ff67fed2dcc869498"

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
