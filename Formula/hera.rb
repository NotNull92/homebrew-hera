class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.8.0/hera-darwin-arm64.tar.gz"
      sha256 "a8d7fb0c941defe0030dbd2169bab714c43cb2fc0e7c11dc77ae92c8212e64ea"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.8.0/hera-darwin-amd64.tar.gz"
      sha256 "e9fe768bce5a636e2232a88a4f8584b6fe5eb74cba11e5dd8ea7d4c461092e1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.8.0/hera-linux-arm64.tar.gz"
      sha256 "5db7e99838e4fcc6bb68c54db090517ab0dd8098ccbaf6b1f7558046d9068bde"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.8.0/hera-linux-amd64.tar.gz"
      sha256 "5f857d872049964fe66305fe167cdf7aaa955451867cfd682ad18f7d21d87d4a"
    end
  end

  def install
    bin.install "hera"
    bin.install_symlink "hera" => "hera-agent-godot"
  end

  test do
    assert_match "v0.8.0", shell_output("#{bin}/hera version")
  end
end
