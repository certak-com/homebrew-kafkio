cask "kafkio" do
  version "2.1.11"
  sha256 "730ca3b7e051c24c71af76cfa81b5a76f121c023da1e7ad2bb33b67dac2ed42a"

  url "https://kafkio.com/download/kafkio/2.1.11/KafkIO-macos-2.1.11-x64.pkg"
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
