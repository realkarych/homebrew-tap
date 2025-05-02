class Seqwall < Formula
  desc "Sequential firewall for TCP/UDP sequences"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_arm64.tar.gz"
      sha256 "b68d8cfe1919e6b09d7638d7b083d5c40226786852a32a9fb22316eb632885c3"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_amd64.tar.gz"
      sha256 "86822d82377c0735d88d80f65d5073ad1e60a8b5edcdb3b13c53c0187b35cf8b"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
