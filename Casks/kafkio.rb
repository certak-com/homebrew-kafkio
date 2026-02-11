cask "kafkio" do
  version "2.1.13"
  sha256 "7858fcf9df7d93caaafb9a91fa27d1c06df63f3cefce650287aba834bf56bc88"

  url "https://kafkio.com/download/kafkio/2.1.13/KafkIO-macos-2.1.13-x64.pkg"
  name "KafkIO"
  desc "Fast, easy Apache Kafka GUI for engineers and administrators"
  homepage "https://kafkio.com"

  pkg "KafkIO-macos-#{version}-x64.pkg"

  uninstall pkgutil: "com.certak.KafkIO*"

  zap trash: [
    "~/Library/Application Support/kafkio",
    "~/Library/Preferences/com.certak.kafkio.*",
    "~/Library/Saved Application State/com.certak.KafkIO*",
  ]
end
