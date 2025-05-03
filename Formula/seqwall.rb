class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.3/v0.0.3_seqwall_darwin_arm64.tar.gz"
      sha256 "30aaa1caca6f424e5ab8df6d9f906641ecb497838c1fe153e2d4c8464e8093e0"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.3/v0.0.3_seqwall_darwin_amd64.tar.gz"
      sha256 "304237d884962d58e6e6f7a1df9d6da23d3be6cced110bb50c2072bed65c5096"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
