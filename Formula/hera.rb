class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "2.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.2/hera-darwin-arm64.tar.gz"
      sha256 "820a7bf28f9cec901256ae4591edd2b94fa3a1a01ee3b99c1c1b002c5e5c9be4"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.2/hera-darwin-amd64.tar.gz"
      sha256 "772c209d18f05fbe919ffc737964e3a2b5c5e0edabfc0771fe1233614c1e8423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.2/hera-linux-arm64.tar.gz"
      sha256 "31c01222305243eac218dfb10e78dd716952a9b9c2805f2fac8a37ac3665937e"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.2/hera-linux-amd64.tar.gz"
      sha256 "689b38a880089f29877c7459452964daf4a9101b707ca5e5018d3ab13b9589cb"
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
    assert_match "v2.0.2", shell_output("#{bin}/hera-godot version")
  end
end
