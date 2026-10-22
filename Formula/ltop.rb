class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.3/ltop-0.2.3-aarch64-darwin.tar.gz"
      sha256 "88bdea8c8bc550747a25dc7528eeaf2f454d05e65786a76c4766154baa1c2829"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.3/ltop-0.2.3-x86_64-darwin.tar.gz"
      sha256 "690a726b25679d3169638881d3db2fb978989254e5a7196bcc776a167a6cee66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.3/ltop-0.2.3-aarch64-linux.tar.gz"
      sha256 "712615d1ab7c0e7b3cea541ec1953823a46cb8ca4605ea6be69c5e108951d976"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.3/ltop-0.2.3-x86_64-linux.tar.gz"
      sha256 "39ea10cb0e837df0c4f2f1d2d9b65e1044156514419e9ea1621e7d0ec9a558b4"
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
