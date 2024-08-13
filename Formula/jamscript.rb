class Jamscript < Formula
  desc "Jam-themed esoteric programming language interpreter"
  homepage "https://github.com/arh96480/homebrew-jamscript"
  url "https://github.com/arh96480/homebrew-jamscript/releases/download/v1.0/jamscript-1.0.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

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
