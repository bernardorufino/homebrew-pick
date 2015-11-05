class Pick < Formula
  desc "Command line picker to pipe through"
  homepage "https://github.com/bernardorufino/pick"
  url "https://github.com/bernardorufino/pick/archive/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "e05eceb87ea8d6045dac5bbf786d18569ff0da785db5c0177cfee12af1bcd2ee"


  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"pick.sh" => "pick"
  end

  test do
    system bin/"pick", "--help"
  end
end
