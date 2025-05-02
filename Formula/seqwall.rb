class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.2/v0.0.2_seqwall_darwin_arm64.tar.gz"
      sha256 "59cc7de097170097745b15ec4a371127142795bb6f69fa1143026291dc35984e"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.2/v0.0.2_seqwall_darwin_amd64.tar.gz"
      sha256 "61d76379a11a2bd4ee5b21cca2e889544df64cc5a35c802dcd0a5caaf9b01da0"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
