class PingboardReleaser < Formula
  desc "A tool to help automate Pingboard releases."
  homepage ""
  url "https://github.com/pingboard/pingboard-releaser/releases/download/v0.1.0/pingboard-releaser_0.1.0_Darwin_x86_64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version "0.1.0"
  sha256 "c14e66adaf53bcb0cba8949b46c5f1beec8e6636746438056dd0e40ede1711e1"

  def install
    bin.install "pingboard-releaser"
  end
end
