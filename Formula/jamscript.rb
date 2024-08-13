class Jamscript < Formula
  desc "Jam-themed esoteric programming language interpreter"
  homepage "https://github.com/arh96480/homebrew-jamscript"
  url "https://github.com/arh96480/homebrew-jamscript/releases/download/v0.1/jamscript-1.0.tar.gz"
  sha256 "653bf2cbe5985432ff37a1b7ec7f12483c41dc44ed1620de7ed93e87fc55788a"

  def install
    bin.install "jamscript.py" => "jamscript"
  end

  test do
    (testpath/"test.jam").write <<~EOS
      JAR counter 1
      BOIL counter
    EOS
    assert_equal "1\n", shell_output("#{bin}/jamscript test.jam")
  end
end
