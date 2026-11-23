cask "kafkio" do
  version "2.1.21"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "3036c0a323e8af88986d71ef5b3352787ed343465a45becbbfb04f33677e8ecd", 
         intel: "08454d6819fe70da0f9983906b2c7572f3ca58039a4380c66feb89c886b7fc6d"

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
