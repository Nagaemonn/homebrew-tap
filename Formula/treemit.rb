class Treemit < Formula
  desc "A CLI tool for emitting tree structures"
  homepage "https://github.com/Nagaemonn/treemit"
  # ↓↓↓ 新しいリリースを出したら、下記3か所を必ず更新！
  version "0.4.2" # ← 新しいバージョンに変更
  license "MIT"

  on_macos do
    on_arm do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.4.2/treemit-darwin-arm64.tar.gz"
      sha256 "bb3e4703e1a0406e54e06d51c0d188cd12f1c9e5e4c7b08c9e7ff278fc7718f9"
    end

    on_intel do
      # ↓ 新しいリリースのURLとsha256に変更
      url "https://github.com/Nagaemonn/treemit/releases/download/v0.4.2/treemit-darwin-amd64.tar.gz"
      sha256 "d1156e1ae7386cdfd413f9a072081bd5459652d6d2514f8fdc3a7c1659a6de80"
    end
  end

  def install
    bin.install "treemit"
  end

  test do
    system "#{bin}/treemit", "--version"
  end
end
