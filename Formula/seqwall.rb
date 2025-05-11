class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.0/v0.1.0_seqwall_darwin_arm64.tar.gz"
      sha256 "f9912d53cd9f75efeebd763be55d9afffbf63f9e3ab50def66855d8edafc4a70"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.1.0/v0.1.0_seqwall_darwin_amd64.tar.gz"
      sha256 "ca5ed9ea84b2988cc806d469af4f17b928cde490b8df66f3f0ccad49ff737a69"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
