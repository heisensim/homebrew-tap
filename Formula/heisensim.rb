class Heisensim < Formula
  desc "The Heisenbug Simulator — deterministic chaos testing for Kubernetes"
  homepage "https://heisensim.dev"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "76ec43e68937bce3f445789ebf276bcf836341d6bc17304c9dbbc3a9459682c5"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "27648ec2820aa1a7ae52a98c5d390d618419f1369f212122553cd3744e3ea6bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcf775d13849e2cf5d2c00762838ec1ba513b74cdf1717de60a5827749a74a6d"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7ac737f10060e22dec9778e2862797c6f8a2e982c1f63fd208d5e88c0ee8167f"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    system "#{bin}/heisensim", "--version"
  end
end
