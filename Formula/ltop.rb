class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.5/ltop-0.2.5-aarch64-darwin.tar.gz"
      sha256 "5108d23747792087d3f0073d3c76908e1ec1804973c046f08814acd516c51cad"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.5/ltop-0.2.5-x86_64-darwin.tar.gz"
      sha256 "347e8a5a4b9524166ae43ff85c4d6f2cea234b568b42a547a7af03c3a03e0341"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.5/ltop-0.2.5-aarch64-linux.tar.gz"
      sha256 "289dcaeb254f9c2bbb2aca005415b1ec69c9058f16e154bb16d01b9f12ba6c00"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.5/ltop-0.2.5-x86_64-linux.tar.gz"
      sha256 "5ba29202e526623353fb5ff718e343aeb93bb5ea4ed7b28cabfd278d4b1ea1aa"
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
