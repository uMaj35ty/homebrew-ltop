class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.9"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.9/ltop-0.2.9-aarch64-darwin.tar.gz"
      sha256 "309d0239a548f00d68945b05d9b5a06103da4324d9d3a69368ec14d1636b85e4"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.9/ltop-0.2.9-x86_64-darwin.tar.gz"
      sha256 "f204d41a136123577dc2be366a09bc475e70331469971ba4d1e005fd0f191cd0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.9/ltop-0.2.9-aarch64-linux.tar.gz"
      sha256 "2e378fb638c64ec55262e42be8e0cc108fd615386c027a3a42367e58b7ade10e"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.9/ltop-0.2.9-x86_64-linux.tar.gz"
      sha256 "d7419d09c83bdc6efa63f002fe660d494a3e0c7aaf28e3f13f1fdf9db43a984b"
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
