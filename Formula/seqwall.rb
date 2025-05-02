class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_arm64.tar.gz"
      sha256 "2f41e177697ed6dd11741656f1c5d396e2da1d67a1f6b1d89f8279b9fabbca11"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_amd64.tar.gz"
      sha256 "5cb7f7e5f5db211f5e5eab8632d9e492a68faf7807d79b23459ba9396a3a9f87"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
