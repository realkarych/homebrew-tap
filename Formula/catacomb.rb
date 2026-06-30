class Catacomb < Formula
  desc "Execution-graph observability for Claude Code agentic sessions"
  homepage "https://github.com/realkarych/catacomb"
  version "v0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/realkarych/catacomb/releases/download/v0.0.1/v0.0.1_catacomb_darwin_arm64.tar.gz"
      sha256 "4923cc6fe31b5d348657aab59eea7d3d34b0c3681ce01252cbd77f14e13a3745"
    else
      url "https://github.com/realkarych/catacomb/releases/download/v0.0.1/v0.0.1_catacomb_darwin_amd64.tar.gz"
      sha256 "9c9e11facbcb31716784de9bd10189eda81acdeb48eec843511de5f47cd80aff"
    end
  end

  def install
    bin.install "catacomb"
  end

  test do
    system "#{bin}/catacomb", "version"
  end
end
