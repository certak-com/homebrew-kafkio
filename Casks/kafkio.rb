cask "kafkio" do
  version "2.1.14"
  sha256 "044221f8c27ac2a4c1905d2f6068cd88b3042528941c37b355b9776a67e53507"

  url "https://kafkio.com/download/kafkio/2.1.14/KafkIO-macos-2.1.14-x64.pkg"
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
