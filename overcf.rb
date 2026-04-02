class Overcf < Formula
  desc "Cloudflare CLI for managing DNS and zones"
  homepage "https://github.com/OverseedAI/overcf"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/OverseedAI/overcf/releases/download/v0.1.0/overcf_darwin_amd64.tar.gz"
      sha256 "394fe9479b5d6d9bc97e71f2f4484c0bb58e3f22597405b00e3c1619c628bb9b"
    end

    on_arm do
      url "https://github.com/OverseedAI/overcf/releases/download/v0.1.0/overcf_darwin_arm64.tar.gz"
      sha256 "94d14cdf5122f415177982fc1f8debad84396699db7645561a894e663d3f7504"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/OverseedAI/overcf/releases/download/v0.1.0/overcf_linux_amd64.tar.gz"
      sha256 "a6db39056ee685f341a7318c09d04ed16c810b69c84d227e2ff907562eddd1ce"
    end

    on_arm do
      url "https://github.com/OverseedAI/overcf/releases/download/v0.1.0/overcf_linux_arm64.tar.gz"
      sha256 "46d2db206ad5ada1d419e3113b2e20e233783a4ef4788263738117818fc28c1d"
    end
  end

  def install
    bin.install "overcf"
  end

  test do
    system "#{bin}/overcf", "--version"
  end
end
