cask "kafkio" do
  version "2.1.12"
  sha256 "20212efa980b60dd846616696c44074db9f000354336cd35fec2db82ff8bc38b"

  url "https://kafkio.com/download/kafkio/2.1.12/KafkIO-macos-2.1.12-x64.pkg"
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
