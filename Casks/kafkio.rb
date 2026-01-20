cask "kafkio" do
  version "2.1.8"
  sha256 "a477fe4a71d9c27324a1ee666c4f76d4caaf18ee90710b5a9d0c20ea0bcbed53"

  url "https://kafkio.com/download/kafkio/2.1.8/KafkIO-macos-2.1.8-x64.pkg"
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
