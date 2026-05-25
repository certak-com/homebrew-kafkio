cask "kafkio" do
  version "2.1.15"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "x64", intel: "x64"

  sha256 arm:   "a026fa82fc1b21ea9c947e6470df9254c459f0a5893b8749c924b0894a913db0", 
         intel: "a026fa82fc1b21ea9c947e6470df9254c459f0a5893b8749c924b0894a913db0"

  url "https://kafkio.com/download/kafkio/#{version}/KafkIO-macos-#{version}-#{arch}.dmg"

  name app_name
  desc "The Fast, Easy Apache Kafka GUI for Engineers and Administrators"
  homepage homepage_url

  app "KafkIO.app"

  caveats do
    <<~EOS
      KafkIO has been installed into your Applications folder.

      Launch it now with:
        open /Applications/KafkIO.app
    EOS
  end

  zap trash: [
    "~/Library/Application Support/kafkio",
    "~/Library/Preferences/com.certak.kafkio.*",
    "~/Library/Saved Application State/com.certak.KafkIO*",
  ]
end
