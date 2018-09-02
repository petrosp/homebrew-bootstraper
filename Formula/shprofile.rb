class Shprofile < Formula
  desc "Manage several shell profiles and switch between them, but not only."
  homepage "https://github.com/abourdon/shprofile"
  url "https://github.com/abourdon/shprofile/archive/4.4.tar.gz"
  sha256 "2001193561c949d0cb8075ea6770f07feb6a0c1433e582a701c6f76cfe8eb421"

  def install
    # system 'mv','shprofile.sh','shprofile'
    (buildpath/"shprofile.sh").rename(buildpath/"shprofile")
    # system 'chmod','+x', 'shprofile'
    bin.install 'shprofile'
  end

  def caveats
    puts HOMEBREW_PREFIX
    "You must create the shprofile folder with `mkdir -p ~/.shprofile/profiles`"
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
