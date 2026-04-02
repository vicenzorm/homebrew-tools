class Coge < Formula
  include Language::Python::Virtualenv

  desc "Local AI-powered git commits for the minimalist developer"
  homepage "https://github.com/vicenzomasera/coge" # Link do repositório original do código
  url "https://github.com/vicenzorm/coge/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "48447249f1603aa1c25e7819350499b4abe09c1ec819304a6a529e6c4ef54e06"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Isso cria um ambiente virtual Python isolado dentro da pasta do Homebrew
    virtualenv_install_with_resources
  end

  test do
    # Um teste simples para ver se instalou certo
    assert_match "Usage", shell_output("#{bin}/coge --help", 1)
  end
end
