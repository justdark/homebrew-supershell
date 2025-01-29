class Supershell < Formula
  desc "智能的命令行工具，可以将自然语言指令转换为具体的 Shell 命令并执行"
  homepage "https://github.com/justdark/supershell"
  url "https://github.com/justdark/supershell/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b7937b347f6d8dd1a1534029e224af5cda1ad6870e91d6874c1c7d9e877c5294"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/supershell", "--version"
  end
end
