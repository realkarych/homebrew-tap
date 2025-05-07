class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.4/v0.0.4_seqwall_darwin_arm64.tar.gz"
      sha256 "4612f94597816ad31ed2d134582845460d02234cf018837a72f57b37af01c554"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.4/v0.0.4_seqwall_darwin_amd64.tar.gz"
      sha256 "410192b95bc7e1443321fc2e2681e58a45d00fd5c2b7555ca7dd25d467071535"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
