class M4bwizard < Formula
  desc "A Wizard for making m4b Audiobooks"
  homepage "https://github.com/TPlemur/m4bWizard"
  url "https://github.com/TPlemur/m4bWizard/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "2c391fb1ba9350bcb7920051369a0c3e21b763ba"
  version "1.0.2"

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