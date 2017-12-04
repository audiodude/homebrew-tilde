class Libgit2AT0246 < Formula
  desc "A pure C implementation of the Git core methods."
  homepage "https://libgit2.github.com/"
  url "https://github.com/libgit2/libgit2/archive/v0.24.6.tar.gz"
  version "0.24.6"
  sha256 "af844f1708492fec7123cf1771275bc52e1b393e78f6f69689fbfd8cf297ac5b"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "cmake", "--build", "."
      system "cmake", "..", "-DCMAKE_INSTALL_PREFIX=#{prefix}"
      system "cmake", "--build", ".", "--target", "install"
    end
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libgit2@0.24.6`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
