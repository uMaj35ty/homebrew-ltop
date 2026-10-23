class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.6"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.6/ltop-0.2.6-aarch64-darwin.tar.gz"
      sha256 "337530530aae076c7f7fcfafbb23202492c5e58358f15bec84b762f259584192"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.6/ltop-0.2.6-x86_64-darwin.tar.gz"
      sha256 "f704acffdb19befb4faf376700ef919abacd7eab64d530abb875efbeb639709a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.6/ltop-0.2.6-aarch64-linux.tar.gz"
      sha256 "df0eb20cf22ca225c716118e15d82b122cf41cf5c02a7b8dea4d9065a5eec182"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.6/ltop-0.2.6-x86_64-linux.tar.gz"
      sha256 "567c349a42a32e001cdfd6261b440cbb91181e4caf0fd89a79ebae34ea637beb"
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
