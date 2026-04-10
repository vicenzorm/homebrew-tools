class Autopr < Formula
  desc "Generate pull request descriptions from git diff/log using local LLMs"
  homepage "https://github.com/vicenzorm/AutoPR"
  url "https://github.com/vicenzorm/AutoPR/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d91634eed656df8c006349c673c3420068635e2d7a58be141082f14166126bee"
  license "Apache-2.0"

  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/AutoPR" => "autopr"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/autopr --help")
  end
end
