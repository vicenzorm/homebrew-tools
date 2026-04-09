class Cogex < Formula
  desc "Local AI-powered git commits for the minimalist developer"
  homepage "https://github.com/vicenzorm/CogeX"
  url "https://github.com/vicenzorm/CogeX/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "63b98ab878fa7dda3853ad3ad1dcc5677808db634d000f7faac72c179340d46f"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "cogex"
  end

  test do
    assert_match "cogex v", shell_output("#{bin}/cogex --version")
  end
end
