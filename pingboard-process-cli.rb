# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_github_private_repository_download_strategy"
class PingboardProcessCli < Formula
  desc ""
  homepage ""
  version "0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/pingboard/pingboard-process-cli/releases/download/v0.1.4/pingboard-process-cli_0.1.4_Darwin_x86_64.tar.gz", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0b833f2f875d3f293b068ec85db93daf352dc5baf449142a939cf9b9c6cb9350"
  elsif OS.linux?
  end

  def install
    bin.install "git-trello"
  end
end
