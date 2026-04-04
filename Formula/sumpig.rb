class Sumpig < Formula
  desc "Merkle tree directory fingerprinting and comparison"
  homepage "https://github.com/tednaleid/sumpig"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-aarch64-apple-darwin.tar.gz"
      sha256 "ccbde9cf8cae055a6e4ff1ab696b0738152f84102b04a2ebe8cf2691db440bdf"
    end
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-apple-darwin.tar.gz"
      sha256 "fcf595107c096373565d1a127ed174ba16bcb5bc5347bd8d965d1f0a0ee08ad5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8035f9d4e064d87b91608517172d6affbc505b9c7098a552aa0321eea11a13a3"
    end
  end

  def install
    bin.install "sumpig"
  end

  test do
    system "#{bin}/sumpig", "--version"
  end
end
