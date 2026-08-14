class Heisensim < Formula
  desc "The Heisenbug Simulator — deterministic chaos testing for Kubernetes"
  homepage "https://heisensim.dev"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e6744dc81ac988622e5513a4a1993500867055c20dc1f3216393f1362fe26dad"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6c13d3ee3601c7c98475f68e453be06e776ca9756dccf17b2ccb9cbd995b795d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca161d42b2cea00747bc91c294e8ec63e0742f4d8674427723ab16292f581a14"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "14cbdae05cb447192683c62e08fc647c6adf35b7fe3dffc4faf7ea746500d8d0"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    system "#{bin}/heisensim", "--version"
  end
end
