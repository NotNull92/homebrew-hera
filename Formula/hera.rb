class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.9.0/hera-darwin-arm64.tar.gz"
      sha256 "b3d9e8d729da28ec0acbcf0fd1770d8c338f240c49e0cc0eb422928b6f6ed26e"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.9.0/hera-darwin-amd64.tar.gz"
      sha256 "48e9186a3e688da73b51772d0ce37a5f034203f09cacf30c6ec45b374b6a9734"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.9.0/hera-linux-arm64.tar.gz"
      sha256 "06679b0fda57475e4c2baf609716c75562b70af31e599ba2b9f580631e6cff3f"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v0.9.0/hera-linux-amd64.tar.gz"
      sha256 "6f90533f687d2aa6b5bee797f16012791003fde1fb67accd3d334bafa76a38d9"
    end
  end

  def install
    bin.install "hera"
    bin.install_symlink "hera" => "hera-agent-godot"
  end

  test do
    assert_match "v0.9.0", shell_output("#{bin}/hera version")
  end
end
