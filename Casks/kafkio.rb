cask "kafkio" do
  version "2.1.15"
  sha256 "a026fa82fc1b21ea9c947e6470df9254c459f0a5893b8749c924b0894a913db0"

  url "https://kafkio.com/download/kafkio/2.1.15/KafkIO-macos-2.1.15-x64.dmg"
  name "KafkIO"
  desc "Fast, easy Apache Kafka GUI for engineers and administrators"
  homepage "https://kafkio.com"

  app "KafkIO.app"

  zap trash: [
    "~/Library/Application Support/kafkio",
    "~/Library/Preferences/com.certak.kafkio.*",
    "~/Library/Saved Application State/com.certak.KafkIO*",
  ]
end
