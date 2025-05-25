class Seqwall < Formula
  desc "Testing tool for PostgreSQL migrations"
  homepage "https://github.com/realkarych/seqwall"
  version "v0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/seqwall/releases/download/v0.2.0/v0.2.0_seqwall_darwin_arm64.tar.gz"
      sha256 "74dca03d65fa7ba4db7323b23f016c748d0fa8114a05d59bdd90499832ee6931"
    else
      url "https://github.com/realkarych/seqwall/releases/download/v0.2.0/v0.2.0_seqwall_darwin_amd64.tar.gz"
      sha256 "392f645d04a8f1fd1c3e36c67b9013bf10c438f3deac224d441ad8a77162389a"
    end
  end

  def install
    bin.install "seqwall"
  end

  test do
    system "#{bin}/seqwall", "--version"
  end
end
