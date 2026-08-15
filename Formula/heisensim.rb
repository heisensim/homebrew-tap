class Heisensim < Formula
  desc "The Heisenbug Simulator — deterministic chaos testing for Kubernetes"
  homepage "https://heisensim.dev"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "cdae057d1285d287058de686837270ad97b82cde39c27fe0afa6101d22821297"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "77944c62ec782ab626f40f61cb3854285a77e081b322d9f6509e0f9035e85f06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "22f71de7e85228625c48193809b64a24dbee1c7ad0e4e3f074742dcfb47c85d6"
    end
    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v#{version}/heisensim-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a52fab94ae169319b14047398214e4a4cbba590c1f3d4f88b5abfbdc2ba8b81"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    system "#{bin}/heisensim", "--version"
  end
end
