class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.1/ltop-0.2.1-aarch64-darwin.tar.gz"
      sha256 "059c63d5b16cec2a4525f3d8d5a2d7bba331ddd9c50b96146aef66c3133e5e6f"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.1/ltop-0.2.1-x86_64-darwin.tar.gz"
      sha256 "23b3583f726e176741c11ed00489bdd8e4fc7c39a2f44d4d940c6702b2d90546"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.1/ltop-0.2.1-aarch64-linux.tar.gz"
      sha256 "8582627ad99d334882dd2c548fb88f72987809b225110e479db04f9003ddcfd1"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.1/ltop-0.2.1-x86_64-linux.tar.gz"
      sha256 "9006dfacbf84a42332ea43ac8c2eacdabc1969b4ea9b38e8fa12bd75b092b6b9"
    end
  end

  def install
    bin.install "ltop"
    on_linux do
      bin.install "ltop-bpf"
    end
    bin.install_symlink "ltop" => "loli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ltop --version")
  end
end
