class Coge < Formula
  include Language::Python::Virtualenv

  desc "Local AI-powered git commits for the minimalist developer"
  homepage "https://github.com/vicenzorm/coge"
  url "https://github.com/vicenzorm/Coge/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2b2dd2eb0ced254eb792aa34d38d6dac0191ae04afa1c718096f7f2df5d622bf"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/coge --help", 1)
  end
end
