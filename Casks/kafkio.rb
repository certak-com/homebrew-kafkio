cask "kafkio" do
  version "2.1.9"
  sha256 "525e80fe8f4e89c4ef2ca7b8cb094024249c8e8d923ad1322b6e743a6af82f2b"

  url "https://kafkio.com/download/kafkio/2.1.9/KafkIO-macos-2.1.9-x64.pkg"
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
