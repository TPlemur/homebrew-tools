class M4bwizard < Formula
  desc "A Wizard for making m4b Audiobooks"
  homepage "https://github.com/TPlemur/m4bWizard"
  url "https://github.com/TPlemur/m4bWizard/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "386f271b740f272c61bc1b569b4a1e8fa7a10f534b78c64dc04a4e9524e4b386"
  version "1.0.0"

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