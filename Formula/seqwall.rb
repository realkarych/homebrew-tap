class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.2/v0.1.2_seqwall_darwin_arm64.tar.gz"
      sha256 "c6a25d3a46c9949b0463f721c4ec314b45c9873847df2d065b586eec39263967"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.2/v0.1.2_seqwall_darwin_amd64.tar.gz"
      sha256 "40b5d54ca3b52e80bb2cc63e5d13692032edf2e22cfb62546cd6f92732676665"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
