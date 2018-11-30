class PingboardReleaser < Formula
  desc "A tool to help automate Pingboard releases."
  homepage ""
  url "https://github.com/pingboard/pingboard-releaser/releases/download/v0.1.1/pingboard-releaser_0.1.1_Darwin_x86_64.tar.gz", :using => GitDownloadStrategy
  version "0.1.1"
  sha256 "8a7d099eaed2331d8ab06c785927d2da48382bb82b822c5e2e5308b30338c7a8"

  def install
    bin.install "pingboard-releaser"
  end
end
