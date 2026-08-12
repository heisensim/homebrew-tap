class Heisensim < Formula
  desc "The Heisenbug Simulator — deterministic chaos testing for Kubernetes"
  homepage "https://heisensim.dev"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    system "#{bin}/heisensim", "--version"
  end
end
