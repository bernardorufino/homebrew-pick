class Pick < Formula
  desc "Command line picker to pipe through"
  homepage "https://github.com/bernardorufino/pick"
  url "https://github.com/bernardorufino/pick/archive/0.0.2.tar.gz"
  version "0.0.2"
  sha256 "7ab8199c08ad4a49003bec3e4988457bd744480f0fe8c4419d98e1bff769aad0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"pick.sh" => "pick"
  end

  test do
    system bin/"pick", "--help"
  end
end
