class Crypto < Formula
  desc "Cryptocurrency tool for the command-line"
  homepage "https://github.com/jasonBirchall/crypto"
  url "https://github.com/jasonBirchall/crypto/releases/download/0.3.6/crypto_0.3.6_darwin_arm64.tar.gz"
  sha256 "611441ecbc621c8d7562b941a639698fdf2714e05044da9ee4d6259e59e47c3a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test crypto`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
