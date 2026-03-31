class Sumpig < Formula
  desc "Merkle tree directory fingerprinting and comparison"
  homepage "https://github.com/tednaleid/sumpig"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-aarch64-apple-darwin.tar.gz"
      sha256 "f95af2a674a05680b356094143074c39e208c29843e6dcf0a31182e407a110bb"
    end
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-apple-darwin.tar.gz"
      sha256 "e513f0455fcecd23bac941f9a2bf28e29f01d435fb20c62bca2c010b74dcf01e"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a8e332638de40cd1a37628182a3d1c9d4bf781424936f6492280ef1d1bce31f"
    end
  end

  def install
    bin.install "sumpig"
  end

  test do
    system "#{bin}/sumpig", "--version"
  end
end
