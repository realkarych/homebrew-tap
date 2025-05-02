class Seqwall < Formula
  desc "Sequential firewall for TCP/UDP sequences"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_arm64.tar.gz"
      sha256 "cb97675ead3c8c21fa073e72fd75ba060ad3f9a58f44b032aa92e3f38377f380"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_amd64.tar.gz"
      sha256 "a7c8ae5d68ec2af428c89d32b6b38b94d1a728748d71320821f111a0a38a7cd7"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
