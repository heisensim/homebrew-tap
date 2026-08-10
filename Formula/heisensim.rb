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
      sha256 "5280cef35491634a1c6cf55e96a14145b3b8f954379b3b4b7ee3f24e3fa1c526"
    end

    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f060a0915320725e8641f6f78882859a2288722816227a3b8ec7dbf13f2d5a7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5294f92db06b4756ca383d71987573aa9f54149be7fce4d4f1c7db7054ab75a6"
    end

    on_intel do
      url "https://github.com/heisensim/heisensim/releases/download/v0.2.0/heisensim-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "748338718af8b65a252fffd06d64564348526af07858d292bcd052a278b09364"
    end
  end

  def install
    bin.install "heisensim"
  end

  test do
    assert_match "heisensim", shell_output("#{bin}/heisensim --version")
  end
end
