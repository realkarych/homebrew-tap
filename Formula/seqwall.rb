class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.1/v0.1.1_seqwall_darwin_arm64.tar.gz"
      sha256 "fbf316b00bf957378bc065779a3f6ac6dade26efd001d95d538fbd612eb53298"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.1/v0.1.1_seqwall_darwin_amd64.tar.gz"
      sha256 "7ae8e64398f53ba71ff7956c5d0f62e0cf1c1054cbcfda47f13df3c90c8a24ce"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
