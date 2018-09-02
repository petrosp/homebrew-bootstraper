class Shprofile < Formula
  desc "Manage several shell profiles and switch between them, but not only."
  homepage "https://github.com/abourdon/shprofile"
  url "https://raw.githubusercontent.com/abourdon/shprofile/4.4/shprofile.sh"
  sha256 "895ae9e6be4d589678b910c2e8bf4b1e4336a8d704741ea008b80fb126fe2510"

  def install
    system 'mkdir', '-p', "~/.shprofile/profiles"
    system 'mv','shprofile.sh','shprofile'
    system 'chmod','+x', 'shprofile'
    bin.install 'shprofile'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test shprofile`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
