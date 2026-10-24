class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.7"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.7/ltop-0.2.7-aarch64-darwin.tar.gz"
      sha256 "e05907158bd9969dd967512e10c6120633865b38a0010c526499e47b4eaa97f3"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.7/ltop-0.2.7-x86_64-darwin.tar.gz"
      sha256 "47da65cd4d0ccf03713d16c3d7d9eabec7601e9f24c53b3b9f02a86870de609d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.7/ltop-0.2.7-aarch64-linux.tar.gz"
      sha256 "57b7ddafd5c00947ee3db59b67436b9552873793d2113d8df2cb1721050708bf"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.7/ltop-0.2.7-x86_64-linux.tar.gz"
      sha256 "38551216297e530be2fd93ae64c610e5b877a5729d34985e71f05f66829b06f8"
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
