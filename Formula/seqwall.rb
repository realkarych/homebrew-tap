class Seqwall < Formula
  desc "Sequential firewall for TCP/UDP sequences"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_arm64.tar.gz"
      sha256 "7c2d7454944a7213bd0a20f386b5db5398cf24676238a81fd474a07d51f532de"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.0.1/v0.0.1_seqwall_darwin_amd64.tar.gz"
      sha256 "800810b835a1c398ba00cfa34e52877727bcec257cd956525d6a611b020a7f6d"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
