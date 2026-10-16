class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.0/hera-darwin-arm64.tar.gz"
      sha256 "dc31b9c90ff8c7cae5a93f3b9635398b9d7e7f75f297409a79077b5a5e912510"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.0/hera-darwin-amd64.tar.gz"
      sha256 "5045873d262904d8487a5f006dfe484ae4fe9424fa0a523e4e7d742af7f6a7ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.0/hera-linux-arm64.tar.gz"
      sha256 "36b14b1250c2041b16dfce5f436a370715e7416b08fd6a097870a8f79510965f"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.0/hera-linux-amd64.tar.gz"
      sha256 "0e00ce89a2f306adc92f811602c376a3e51673cde873ea4778b90bc074f233b4"
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
    assert_match "v2.0.0", shell_output("#{bin}/hera-godot version")
  end
end
