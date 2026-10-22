class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.2/ltop-0.2.2-aarch64-darwin.tar.gz"
      sha256 "bca06c92cd7c43c1c285e122615a9d64726a03a8c2cbcd01c68f62f11a14b5ae"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.2/ltop-0.2.2-x86_64-darwin.tar.gz"
      sha256 "dce03432603db103b978c2ae1e7cdd8396b5bbdb091b67f8a9e1afabd21b660e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.2/ltop-0.2.2-aarch64-linux.tar.gz"
      sha256 "b384c81e7bc5e40198b80de5ce49d6527f9689c40d8fff5411dcd925d013723e"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.2/ltop-0.2.2-x86_64-linux.tar.gz"
      sha256 "a4d04ccb68576a28aada81ed5822b41fbc9d1b9b0f80587d552c00a5b7bab81d"
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
