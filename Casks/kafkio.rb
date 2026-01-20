cask "kafkio" do
  version "2.1.10"
  sha256 "7055ba7ab70a4f332bb6b4353b5a761277cd03f6f21200ed34d8699a39aa644c"

  url "https://kafkio.com/download/kafkio/2.1.10/KafkIO-macos-2.1.10-x64.pkg"
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
