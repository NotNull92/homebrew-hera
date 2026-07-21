class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.0.0/hera-darwin-arm64.tar.gz"
      sha256 "f0cec4adeffe67808315e588c108ca9ae058720868f0616d01c90805b114e275"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.0.0/hera-darwin-amd64.tar.gz"
      sha256 "11c5246e7449a9a7a4af9592005978ef716947e5145cd257d63fef7264c3536a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.0.0/hera-linux-arm64.tar.gz"
      sha256 "ce6f0aa4f1bdd2f217757453dcc3f58cec60a805085447dd433d9ea9a8d56a2f"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.0.0/hera-linux-amd64.tar.gz"
      sha256 "384d93652ade67f0a2c975e152521760d3bf32f8770edd4b9ee382ea98bcab8a"
    end
  end

  def install
    bin.install "hera"
    bin.install_symlink "hera" => "hera-agent-godot"
  end

  test do
    assert_match "v1.0.0", shell_output("#{bin}/hera version")
  end
end