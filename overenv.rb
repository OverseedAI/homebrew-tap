class Overenv < Formula
  desc "Named environment-variable profiles with live shell activation"
  homepage "https://github.com/OverseedAI/overenv"
  url "https://github.com/OverseedAI/overenv/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b6a98be67a8dc7128c3ec2de628817900f1960296ee218c9bd4cdf5bce3c3550"
  license "MIT"

  def install
    bin.install "bin/overenv"
    (pkgshare).install "shell/overenv.sh"
  end

  def caveats
    <<~EOS
      To enable the `env activate <name>` UX, add this to your ~/.zshrc or ~/.bashrc:

        source #{opt_pkgshare}/overenv.sh

      Then: env activate <name>   (run `overenv help` for all commands)
    EOS
  end

  test do
    assert_match "overenv #{version}", shell_output("#{bin}/overenv version")
    ENV["OVERENV_DIR"] = testpath
    (testpath/"demo.env").write("FOO=bar\n")
    assert_match "export FOO='bar'", shell_output("#{bin}/overenv activate demo")
  end
end
