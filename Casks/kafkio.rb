cask "kafkio" do
  version "2.1.15"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "10fc5daada6b304327a1fe6885ab866f795f8419fba12df56a548933617d0dd6", 
         intel: "a026fa82fc1b21ea9c947e6470df9254c459f0a5893b8749c924b0894a913db0"

  url "https://kafkio.com/download/kafkio/#{version}/KafkIO-macos-#{version}-#{arch}.dmg"

  name app_name
  desc "Fast, easy Apache Kafka GUI for engineers and administrators"
  homepage homepage_url

  app "KafkIO.app"

  caveats do
    <<~EOS
      KafkIO has been installed into your Applications folder.

      Launch it with:
        open /Applications/KafkIO.app
    EOS
  end

  zap trash: [
    "~/Library/Application Support/kafkio",
    "~/Library/Preferences/com.certak.kafkio.*",
    "~/Library/Saved Application State/com.certak.KafkIO*",
  ]
end
