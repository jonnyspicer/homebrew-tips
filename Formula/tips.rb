class Tips < Formula
  desc "CLI tool for generating and displaying helpful programming tips"
  homepage "https://github.com/jonnyspicer/tips"
  url "https://github.com/jonnyspicer/tips/releases/download/v1.0.0/tips-1.0.0-darwin-universal.tar.gz"
  sha256 "f99560e16389ea7cfc9fa38c653214c3fe8b14b4f25fb78ba120a1dbe3d22f33"
  license "MIT"

  depends_on "go" => :build

  def install
    bin.install "tips"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/tips --version")
    assert_match "Tips is a command-line tool", shell_output("#{bin}/tips --help")

    # Test basic commands
    system bin/"tips", "clear", "--help"
    system bin/"tips", "generate", "--help"
    system bin/"tips", "show", "--help"
  end
end