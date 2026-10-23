class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.4/ltop-0.2.4-aarch64-darwin.tar.gz"
      sha256 "c821e29d1b51393930c624b7ed06affa320edfac896b31dae555e30b4043334e"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.4/ltop-0.2.4-x86_64-darwin.tar.gz"
      sha256 "123acbf68763170b39e9046630b5d7b6d13775a6e008796ed272b04d55a8383d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.4/ltop-0.2.4-aarch64-linux.tar.gz"
      sha256 "31d56c1b535ccd521beeb396e896c44e3f74b47863c8dcf48d327575d3631e15"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.4/ltop-0.2.4-x86_64-linux.tar.gz"
      sha256 "48e053aa4f31fa2b0d64e054dda0ab7845066a0e6ee1e4466cdb468259b89831"
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
