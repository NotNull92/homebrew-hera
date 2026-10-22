class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "2.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.3/hera-darwin-arm64.tar.gz"
      sha256 "7c134a7c94154e727dac0d5482c87859c3df70111f59ca0f71cdd48d2d0d1fa7"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.3/hera-darwin-amd64.tar.gz"
      sha256 "e4a6789c5ec3dcbcae01d0b9dbdb0aaa64e66ba411e50dd8fe56580df1273395"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.3/hera-linux-arm64.tar.gz"
      sha256 "1f3f76e48caabdcdc54e9844e16b2125041d005df9c76e74cdfb56f9f95a6975"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.3/hera-linux-amd64.tar.gz"
      sha256 "0705d7ffc222eee781671de8ab75241ce1bfb55434418d36a0ab0f00026d723c"
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
    assert_match "v2.0.3", shell_output("#{bin}/hera-godot version")
  end
end
