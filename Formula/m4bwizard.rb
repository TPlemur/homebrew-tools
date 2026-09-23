class M4bwizard < Formula
  desc "A Wizard for making m4b Audiobooks"
  homepage "https://github.com/TPlemur/m4bWizard"
  url "https://github.com/TPlemur/m4bWizard/archive/refs/tags/v2.0.1.tar.gz"
  sha256 "0cc113ae788862a1fcf0f746c135cddf81173c75efa4526034b580cbd1d37932"
  version "2.0.1"

  def install
    # This copies 'm4bwizard.sh' from the archive and saves it into Homebrew's bin folder.
    # It also renames it to 'm4bwizard' (removing the extension) and makes it executable.
    bin.install "m4bWizard.sh" => "m4bWizard" 
  end

  test do
    # A simple test to make sure the script executes or returns a version
    system "#{bin}/m4bWizard", "--version"
  end
end
