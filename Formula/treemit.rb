class Treemit < Formula
  desc "A CLI tool for emitting tree structures"
  homepage "https://github.com/Nagaemonn/treemit"
  url "https://github.com/Nagaemonn/treemit/releases/download/v0.1.2-beta/treemit-v0.1.2-beta-darwin-amd64.tar.gz"
  version "0.1.2-beta"
  sha256 "ed105ea822ae93651d4e9ea0989d82798bceb1728fe8ee441e13e9a9194ccd82"
  license "MIT"

  def install
    bin.install "treemit"
  end

  test do
    system "#{bin}/treemit", "--version"
  end
end
