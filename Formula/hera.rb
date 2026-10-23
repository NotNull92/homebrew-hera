class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.1.0/hera-darwin-arm64.tar.gz"
      sha256 "b53c52b4bd68cc992e5f5991c806136cc664f3810b7711ac24c13c3ffd5b424b"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.1.0/hera-darwin-amd64.tar.gz"
      sha256 "8ffb3b56293ef48ff45f8ce1a1a6e9e92e85231b55a12f5010b8b8c3d1acd1d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.1.0/hera-linux-arm64.tar.gz"
      sha256 "fa8b6fbcae1cfd449a092e3323420e0241b6c8ed1ad7da68114aae4144724637"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.1.0/hera-linux-amd64.tar.gz"
      sha256 "b1c525708128e56f1cdc38f3b995dbfbae93217cf7df3fc0692790d54b30e074"
    end
  end

  def install
    bin.install "hera" => "hera-godot"
    bin.install_symlink "hera-godot" => "hera-agent-godot"
  end

  def caveats
    "For C# eval, install the separate helper: hera-godot csharp-host install"
  end

  test do
    assert_match "v2.1.0", shell_output("#{bin}/hera-godot version")
  end
end
