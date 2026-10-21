cask "kafkio" do
  version "2.1.17"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "99470f6790ae2bc4851d72c3e55db945bbf2aefd5ac8c5124d49c6d80cf4cb4c", 
         intel: "99ebc1b8154369a7717c1576d4667c37f4fa3386e11b8cf9821a8eb83db1b3de"

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
