class Hera < Formula
  desc "Low-token CLI that lets AI coding agents inspect and control a live Godot editor"
  homepage "https://github.com/NotNull92/hera-agent-godot"
  version "2.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.1/hera-darwin-arm64.tar.gz"
      sha256 "f5798b397305e658a7f44cce8f651d0dcee4af83455dfba1bdda95bdb0dd6fc6"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.1/hera-darwin-amd64.tar.gz"
      sha256 "dbeb7e409ffc99b42d2e8e2271f6eebdc2a47643949c87e51681f43c8aed4414"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.1/hera-linux-arm64.tar.gz"
      sha256 "50cb806b98bf03802f93e3233d4bb60af75d754995dba4f3f3b13882fdd29847"
    else
      url "https://github.com/NotNull92/hera-agent-godot/releases/download/v2.0.1/hera-linux-amd64.tar.gz"
      sha256 "d74683ff84df61a55e557a8056bca1d2f73c325c87a01307de11fd3891288e97"
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
    assert_match "v2.0.1", shell_output("#{bin}/hera-godot version")
  end
end
