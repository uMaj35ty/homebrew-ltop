class Ltop < Formula
  desc "btop-styled TUI monitor for local network traffic, LAN neighbours and disk I/O"
  homepage "https://github.com/uMaj35ty/ltop"
  version "0.2.11"

  on_macos do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.11/ltop-0.2.11-aarch64-darwin.tar.gz"
      sha256 "29b0ffdb5b6e19f5bbb00367b80d8d14f37a1ea2a45117d90819d105cdeb87ac"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.11/ltop-0.2.11-x86_64-darwin.tar.gz"
      sha256 "9284c806dcf62781be76f29114bf8e867e30200c57657b128fc8dd40cea81f30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.11/ltop-0.2.11-aarch64-linux.tar.gz"
      sha256 "07b60af0a8b003fc3aec94976da8e50876b1a01476246667ecbff4e8f1f88c81"
    end
    on_intel do
      url "https://github.com/uMaj35ty/ltop/releases/download/v0.2.11/ltop-0.2.11-x86_64-linux.tar.gz"
      sha256 "9c60bb31ebc5a0bbbc805aae6393074f4073787a6f303db4e7105df8aac72975"
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
