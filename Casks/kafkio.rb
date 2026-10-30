cask "kafkio" do
  version "2.1.19"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  arch arm: "arm64", intel: "x64"

  sha256 arm:   "59f69103ec09404d70c9b7c19404bdbe02e76c69760b4e0431bed215733dbc05", 
         intel: "50dc0ed3466a8aff579e790b8898e192eda2315b38d5d791874649cfbc6bd23e"

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
