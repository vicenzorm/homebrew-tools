class Cogex < Formula
  desc "Local AI-powered git commits for the minimalist developer"
  homepage "https://github.com/vicenzorm/CogeX"
  url "https://github.com/vicenzorm/CogeX/archive/refs/tags/v.0.3.1.tar.gz"
  sha256 "91ce40a3a15bdd3fc2f2c83da2e6de4a753e5b67af921382e6a80c5494218a60"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "cogex"
  end

  test do
    assert_match "cogex v", shell_output("#{bin}/cogex --version")
  end
end
