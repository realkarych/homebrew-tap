class Seqwall < Formula
  desc "Sequential firewall for TCP/UDP sequences"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_arm64.tar.gz"
      sha256 "096a3f9e8ae7cbdc81cfdf7acdc80fd036bde10122616fb08d339ddfda6e6141"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_amd64.tar.gz"
      sha256 "67234b156d0455d8291cbbccddea41ad46a9da0381cb665d0e7c82a325f4cf1e"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
