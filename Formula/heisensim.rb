class Heisensim < Formula
  desc "The Heisenbug Simulator — deterministic chaos testing for Kubernetes"
  homepage "https://heisensim.dev"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "99c36b3c8002221061de0e7ad7fb9ea46b87ffcff63d421c005baf929e3c1b39"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b6a4ba0d778e2844c67c7738fb723a994dfbce0dc019fcc403e9396b0e74f46d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "78ef82f939766df979ed14d74db97bec4d06e7b9030f70c9467947f28f95035f"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c1d889a155bff29e2f41a607baf650a431ce6f2e0f486a7d156294d8d7ddd8b6"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    system "#{bin}/heisensim", "--version"
  end
end
