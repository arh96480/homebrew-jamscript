class Jamscript < Formula
  desc "Jam-themed esoteric programming language interpreter"
  homepage "https://github.com/arh96480/homebrew-jamscript"
  url "https://github.com/arh96480/homebrew-jamscript/releases/download/v0.2/jamscript-0.2.tar.gz"
  sha256 "c92e53436f1c17574a1a998d2a23fcec7c96afacc3792a5533c7c2060698f4cd"

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
