class Sillycd < Formula
  desc "The fastest way to type cd command"
  homepage "https://github.com/wtetsu/sillycd/"
  url "https://github.com/wtetsu/sillycd.git",
      :tag      => "v1.0.0",
      :revision => "9294377a976b43d7b8ae0c0b0010378f693b42a1"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"sillycd"
    # system "go", "build", "-s", "-w", "-trimpath", "-o", bin/"sillycd"
    # prefix.install_metafiles
    bin.install "bin/sillycd"
  end

  test do
    system "true"
  end
end
