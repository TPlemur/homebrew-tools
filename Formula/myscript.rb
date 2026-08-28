class m4bWizard < Formula
  desc "A Wizard for making m4b Audiobooks"
  homepage "https://github.com/TPlemur/m4bWizard"
  url "https://github.com/TPlemur/m4bWizard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a5d1df97114e79b2ff5188763f85a60262c861ba98a4914589728ea592b9f15d"
  version "1.0.0"

  def install
    # This copies 'myscript.sh' from the archive and saves it into Homebrew's bin folder.
    # It also renames it to 'myscript' (removing the extension) and makes it executable.
    bin.install "m4bWizard.sh" => "m4bWizard" 
  end

  test do
    # A simple test to make sure the script executes or returns a version
    system "#{bin}/m4bWizard", "--version"
  end
end