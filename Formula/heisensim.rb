# typed: false
# frozen_string_literal: true

# Homebrew formula for heisensim — deterministic chaos testing for Kubernetes
class Heisensim < Formula
  desc "Deterministic chaos testing for Kubernetes with SLA verification"
  homepage "https://github.com/heisensim/heisensim"
  license any_of: ["Apache-2.0", "MIT"]
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end

    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_X86_64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end

    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X86_64"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    assert_match "heisensim", shell_output("#{bin}/heisensim --version")
  end
end
