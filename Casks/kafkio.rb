cask "kafkio" do
  version "2.1.15"
  sha256 "10fc5daada6b304327a1fe6885ab866f795f8419fba12df56a548933617d0dd6"

  url "https://kafkio.com/download/kafkio/2.1.15/KafkIO-macos-2.1.15-x64.pkg"
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
