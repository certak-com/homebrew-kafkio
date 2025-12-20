cask "kafkio" do
  version "2.1.4"
  sha256 "5a7d7fc8208d89798984ab981a9000516af98dc544cc2ea97cdacedf6c6e55bc"

  url "https://kafkio.com/download/kafkio/2.1.4/KafkIO-macos-2.1.4-x64.pkg"
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
