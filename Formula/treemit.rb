class Treemit < Formula
  desc "A CLI tool for emitting tree structures"
  homepage "https://github.com/Nagaemonn/treemit"
  # ↓↓↓ 新しいリリースを出したら、下記3か所を必ず更新！
  version "0.1.2-beta" # ← 新しいバージョンに変更
  license "MIT"

  on_macos do
    on_arm do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.1.2-beta/treemit-darwin-arm64.tar.gz"
      sha256 "ed105ea822ae93651d4e9ea0989d82798bceb1728fe8ee441e13e9a9194ccd82"
    end

    on_intel do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.1.2-beta/treemit-darwin-amd64.tar.gz"
      sha256 "6f3a31cbbf2973641a402f78a2965ebf2f41bba99e51aebd2278930b0fe3fd02"
    end
  end

  def install
    bin.install "treemit"
  end

  test do
    system "#{bin}/treemit", "--version"
  end
end
