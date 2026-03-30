class Sumpig < Formula
  desc "Merkle tree directory fingerprinting and comparison"
  homepage "https://github.com/tednaleid/sumpig"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-aarch64-apple-darwin.tar.gz"
      sha256 "8aa0d6ba842007eca0f10364bc50a690e0cc4dd89a72f70b6623640edea09f44"
    end
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-apple-darwin.tar.gz"
      sha256 "91532a03c6cdfa357bb5b33f0a106063e4b7938f6a96e74172f0e33cce29925f"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a44e114383ea596a0c348cad362fd8fc8e91312657d928ecfdb2cdc9cde077d4"
    end
  end

  def install
    bin.install "sumpig"
  end

  test do
    system "#{bin}/sumpig", "--version"
  end
end
