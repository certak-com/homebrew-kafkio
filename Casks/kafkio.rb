cask "kafkio" do
  version "2.1.7"
  sha256 "a2898947fd0130c4d3897874fb67b38d990ffa9621c98fa8bd13031ae48b3dd2"

  url "https://kafkio.com/download/kafkio/2.1.7/KafkIO-macos-2.1.7-x64.pkg"
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
