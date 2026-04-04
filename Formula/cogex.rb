class Cogex < Formula
  desc "Local AI-powered git commits for the minimalist developer"
  homepage "https://github.com/vicenzorm/CogeX"
  url "https://github.com/vicenzorm/CogeX/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "39e605ea20f9deb1df47051ac4784ebf4affe723f3796d7fe18c27fc360dbcea"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "cogex"
  end

  test do
    assert_match "cogex v", shell_output("#{bin}/cogex --version")
  end
end
