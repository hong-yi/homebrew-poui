class Poui < Formula
  desc "Application to help you open your relevant developer portals"
  homepage "https://github.com/hong-yi/poui"
  url "https://github.com/hong-yi/poui.git", tag: "v0.1.1"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
