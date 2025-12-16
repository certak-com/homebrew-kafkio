cask "kafkio" do
  version "2.1.2"
  sha256 "76f76cfae16a7388084c89563629c516f42aa60396c145938ae634d8e5e38ad4"

  url "https://kafkio.com/download/kafkio/#{version}/KafkIO-macos-#{version}-x64.pkg"
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
