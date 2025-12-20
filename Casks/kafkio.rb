cask "kafkio" do
  version "2.1.5"
  sha256 "523fec1e06d69de5e9e22f37d64fec076cc3f0314b865d6968ef4ecbb79e7e71"

  url "https://kafkio.com/download/kafkio/2.1.5/KafkIO-macos-2.1.5-x64.pkg"
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
