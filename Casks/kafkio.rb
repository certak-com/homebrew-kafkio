cask "kafkio" do
  version "2.1.6"
  sha256 "55877e31feb7c57c188ad6e91b35e5e78aa5219658e0069228f9a1ea4a75e8ee"

  url "https://kafkio.com/download/kafkio/2.1.6/KafkIO-macos-2.1.6-x64.pkg"
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
