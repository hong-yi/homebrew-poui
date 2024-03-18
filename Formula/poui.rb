class Poui < Formula
  desc "Please Open UI (POUI) - An application to help you open your relevant developer portals"
  homepage "https://github.com/hong-yi/poui"
  url "https://github.com/hong-yi/poui/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7d29489551a8bf43b52a5084d28b16adc5d75d0bc61587a10e72fabe146c8fc3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "false"
  end
end
