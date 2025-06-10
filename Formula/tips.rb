class Tips < Formula
  desc "CLI tool for generating and displaying helpful programming tips"
  homepage "https://github.com/jonnyspicer/tips"
  url "https://github.com/jonnyspicer/tips/releases/download/v1.0.1/tips-1.0.1-darwin-universal.tar.gz"
  sha256 "aca73d2b4f41d519b0003c4da8232eeb4303df46239af86eb439d6430a427173"
  license "MIT"

  depends_on "go" => :build

  def install
    bin.install "tips"
  end

  test do
    assert_match "1.0.1", shell_output("#{bin}/tips --version")
    assert_match "Tips is a command-line tool", shell_output("#{bin}/tips --help")

    # Test basic commands
    system bin/"tips", "clear", "--help"
    system bin/"tips", "generate", "--help"
    system bin/"tips", "show", "--help"
  end
end