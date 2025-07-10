class Treemit < Formula
  desc "A CLI tool for emitting tree structures"
  homepage "https://github.com/Nagaemonn/treemit"
  # ↓↓↓ 新しいリリースを出したら、下記3か所を必ず更新！
  version "0.4.0" # ← 新しいバージョンに変更
  license "MIT"

  on_macos do
    on_arm do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.4.0/treemit-darwin-arm64.tar.gz"
      sha256 "e75e945b71cf1d557511b53877b3a9b8c389240f6f8a19e84c6c6aa547ef2aeb"
    end

    on_intel do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.4.0/treemit-darwin-amd64.tar.gz"
      sha256 "b3af46f6f712c095d7e465b9044d617ceb44d80b27b77e97aa1b4ae12ec09e34"
    end
  end

  def install
    bin.install "treemit"
  end

  test do
    system "#{bin}/treemit", "--version"
  end
end
