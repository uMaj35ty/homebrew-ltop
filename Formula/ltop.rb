class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.10"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.10/ltop-0.2.10-aarch64-darwin.tar.gz"
      sha256 "eef4564c5969e0b87255ecd86d1b7df4781d415e2591fd8c102dd29f8e4756ff"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.10/ltop-0.2.10-x86_64-darwin.tar.gz"
      sha256 "a13a61da5ad0913d52f3a0901d7a93920b53692269712974ff40b19ddd2aaf1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.10/ltop-0.2.10-aarch64-linux.tar.gz"
      sha256 "e6301a9d7f82b697063a358eb82807f34d8fa2a42f1ffed26f68f99b4c5d50f4"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.10/ltop-0.2.10-x86_64-linux.tar.gz"
      sha256 "d1e07967cba0f4f27c17005ee58f6e6457656b323417f092831a15c8edef0d78"
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
