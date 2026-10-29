class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.12"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.12/ltop-0.2.12-aarch64-darwin.tar.gz"
      sha256 "eb1c5317de78633054e82ea4b67a9a85fd7b051de01583724aeb8573198bd752"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.12/ltop-0.2.12-x86_64-darwin.tar.gz"
      sha256 "19af262e574b4a5526bc381c1b6087305cc12f153d9cd78b8424f6a2d0c3e4a9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.12/ltop-0.2.12-aarch64-linux.tar.gz"
      sha256 "45b4b58a1cef5dd66e4b20b1512b8f4962d7111cbb33bb58fb4e1a4c2411c9bc"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.12/ltop-0.2.12-x86_64-linux.tar.gz"
      sha256 "687c7aa74b9c5f1b3e571225760496fb7e1156c7f0e5e6a2ab8aa5b30cb392a1"
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
