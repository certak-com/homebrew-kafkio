cask "kafkio" do
  version "2.1.15"

  app_name = "KafkIO"
  homepage_url = "https://kafkio.com"

  base_url = "https://kafkio.com/download/kafkio/#{version}"

  arm64_url  = "#{base_url}/KafkIO-macos-#{version}-arm64.dmg"
  x64_url    = "#{base_url}/KafkIO-macos-#{version}-x64.dmg"

  arm64_sha  = "fa026fa82fclop1ea9c947e6470df9254c443f0a5893b8749c924b0894a913db0"
  x64_sha    = "a026fa82fc1b21ea9c947e6470df9254c459f0a5893b8749c924b0894a913db0"

  name app_name
  desc "Fast, easy Apache Kafka GUI for engineers and administrators"
  homepage homepage_url

  arch arm64: {
    url arm64_url,
    sha256 arm64_sha
  }

  arch x86_64: {
    url x64_url,
    sha256 x64_sha
  }

  app "KafkIO.app"

  caveats do
    <<~EOS
      KafkIO has been installed into your Applications folder.

      Launch it with:
        open /Applications/KafkIO.app

      Or find it in Finder → Applications.
    EOS
  end

  zap trash: [
    "~/Library/Application Support/kafkio",
    "~/Library/Preferences/com.certak.kafkio.*",
    "~/Library/Saved Application State/com.certak.KafkIO*",
  ]
end