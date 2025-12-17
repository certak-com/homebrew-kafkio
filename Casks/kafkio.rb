cask "kafkio" do
  version "2.1.3"
  sha256 "483c944ddd4087c0c19a78a61ed97544c821cf92935c252f9eaba0edc40df18e"

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
