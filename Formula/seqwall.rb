class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.3.0/v0.3.0_seqwall_darwin_arm64.tar.gz"
      sha256 "2a50cb5bc9055eb8d7e5ec675c96e3cb2cfb41ce9b24af8e71760674f187e180"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.3.0/v0.3.0_seqwall_darwin_amd64.tar.gz"
      sha256 "b37486dca636b3d18a8f5b22aadbceb8815f1b1efa6b6f00214f73446aae5bac"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
