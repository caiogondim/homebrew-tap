# Documentation
# - https://docs.brew.sh/Formula-Cookbook
# - https://rubydoc.brew.sh/Formula

require "language/node"

class Mocker < Formula
  desc "Reverse proxy with record/playback capabilities"
  homepage "https://github.com/caiogondim/mocker"
  version "1.1.0"
  url "https://github.com/caiogondim/mocker/archive/refs/tags/1.1.0.tar.gz"
  sha256 "01b342ea782e8e37dcc1c41bdbe70c04773e00f579ba77229828ec84a9067f00"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test mocker`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
