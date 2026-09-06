class M4bwizard < Formula
  desc "A Wizard for making m4b Audiobooks"
  homepage "https://github.com/TPlemur/m4bWizard"
  url "https://github.com/TPlemur/m4bWizard/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "f0e529e894d9a2089987ed8dcbe48d76a2c4366671aa5e79db1dd386615c8a06"
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