class Sumpig < Formula
  desc "Merkle tree directory fingerprinting and comparison"
  homepage "https://github.com/tednaleid/sumpig"
  version "0.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-aarch64-apple-darwin.tar.gz"
      sha256 "c94a07fd2726cf6906ade972c26dea03c0036529428b9e0f3fb52f3c0a140d03"
    end
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-apple-darwin.tar.gz"
      sha256 "a403cac41d6cfcbae8f14673c6ab355b7ca804619bf27899ec0b3bbe04fa7a39"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/tednaleid/sumpig/releases/download/v#{version}/sumpig-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f98129f5f946757d00ddb4f69c6ec355328156658d55ef7ca0d175ef7accafc0"
    end
  end

  def install
    bin.install "sumpig"
  end

  test do
    system "#{bin}/sumpig", "--version"
  end
end
