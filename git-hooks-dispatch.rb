# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class GitHooksDispatch < Formula
  desc "A command that run hooks only in a directory where files are changed. Useful for monorepo."
  homepage "https://github.com/akr4/git-hooks-dispatch"
  url "https://github.com/akr4/git-hooks-dispatch/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "be9dd994b8536c3ccdd22169e9944ad04e66d0776e2c10a2a94f05417dbdca64"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "false"
  end
end
