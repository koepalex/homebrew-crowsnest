cask "crowsnestmqtt" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "262abcb3884dd2c332c5744d9f84cc69a03f553fa9933d8be83c2337fc864450",
         intel: "90c96f4391d91af003fe048bd53efbe35e6283d0f55c9bf29f110b6bc54a54cc"

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
