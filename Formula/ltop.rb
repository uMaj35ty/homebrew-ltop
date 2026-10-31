class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.13"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.13/ltop-0.2.13-aarch64-darwin.tar.gz"
      sha256 "e3f7056b3f200c2efa0a4bab106f7e66aa09cc9402d66b65f13583e6fc6e4887"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.13/ltop-0.2.13-x86_64-darwin.tar.gz"
      sha256 "1b282a2c476c188e42b73091d168b4fb1a8f2c1f0276375f9b3fe397533a8421"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.13/ltop-0.2.13-aarch64-linux.tar.gz"
      sha256 "7dcb2f753dc7c6153c10f0ed7d78b738cbb6136c580c7ccecb43c0e65dd0ed1e"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.13/ltop-0.2.13-x86_64-linux.tar.gz"
      sha256 "223506d91d6cebd353cc8d6fc4a214374fde3cbb85abff3061d1cde1d775cb0d"
    end
  end

  def install
    bin.install "ltop"
    on_linux do
      bin.install "ltop-bpf"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ltop --version")
  end
end
