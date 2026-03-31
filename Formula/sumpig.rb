class Sumpig < Formula
  desc "Merkle tree directory fingerprinting and comparison"
  homepage "https://github.com/tednaleid/sumpig"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-aarch64-apple-darwin.tar.gz"
      sha256 "b7a0d76eb4124cb85e3053693010b61e5c0d4cb46cc1f880b0084eb039ec690f"
    end
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-apple-darwin.tar.gz"
      sha256 "b9e3a46460a9ce4471f6004495364013fa657096d33301c1a343f5a04c4c5d44"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "520e99e63be34847f1b059b965731625daa3ea3c652659423becfeed578902e6"
    end
  end

  def install
    bin.install "sumpig"
  end

  test do
    system "#{bin}/sumpig", "--version"
  end
end
