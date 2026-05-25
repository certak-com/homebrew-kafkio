cask "kafkio" do
  version "2.1.16"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "c48b0195fc2a9b807ac20e2a7b5964c3a1f2d477938898c82c4d5907011d853c", 
         intel: "c041c7f978e0c6f1b5e78e2f03120845229535bb47bc3f4d5bd7ff67de4326d0"

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
