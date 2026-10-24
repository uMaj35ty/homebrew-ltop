class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.8"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.8/ltop-0.2.8-aarch64-darwin.tar.gz"
      sha256 "12fe9cefcd5e92ee59f4358c8acc700b56a64f31b023adada62961ca577c39a1"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.8/ltop-0.2.8-x86_64-darwin.tar.gz"
      sha256 "82a7beb3a15d7676534f97cb5cfe60aee2fa1404bbda39b0299f791b71fa9935"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.8/ltop-0.2.8-aarch64-linux.tar.gz"
      sha256 "e145415c4d3da88e04d0a14afb2b6460078abf346efb752c106c879b8601061f"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.8/ltop-0.2.8-x86_64-linux.tar.gz"
      sha256 "e1844738675a32bf674eb2acf36aa709b8aafc4aa7879e4d913a15c600090fd2"
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
