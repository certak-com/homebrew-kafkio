cask "kafkio" do
  version "2.1.18"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "b5ca115707e41fa977b1e2fabbc02ba3704d08c7acbd591adabe75f7319f3c2f", 
         intel: "3556c910360118528cc8f65829bbe150d86ab44ae8ca7cc35114d90b96d64794"

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
