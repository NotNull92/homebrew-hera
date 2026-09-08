class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.1.0/hera-darwin-arm64.tar.gz"
      sha256 "11fb2531ba0cf14d0903d743894e7e3a2e20dca1687577efaff295f4a7db4dde"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.1.0/hera-darwin-amd64.tar.gz"
      sha256 "5c833795978d679d7b530f45f1609f56ae0eb12619c7a5a5f883bc2129317d50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.1.0/hera-linux-arm64.tar.gz"
      sha256 "df2b2be29c87cd192a8ee1b98e6ad3e0cd1ebf02aefd4834e4c15141ecf9f83a"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v1.1.0/hera-linux-amd64.tar.gz"
      sha256 "eafd4bc7674c7fa8be5664b382dbf42bdf25dfaf8de48306e20dd72eac87e818"
    end
  end

  def install
    bin.install "hera"
    bin.install_symlink "hera" => "hera-agent-godot"
  end

  test do
    assert_match "v1.1.0", shell_output("#{bin}/hera version")
  end
end
