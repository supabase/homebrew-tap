class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0/supabase_2.117.0_darwin_arm64.tar.gz"
      sha256 "c8a298065b374836a42945f5d78ab9348d328bcfd099c14d3e5b0b537791209b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0/supabase_2.117.0_darwin_amd64.tar.gz"
      sha256 "6bf14bf758f8514ea4ba3a0020c15eabec6f6edc7525614345fda6c0082ae63d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0/supabase_2.117.0_linux_arm64.tar.gz"
      sha256 "598c56a936fdf179ea486717901e6e49bc5d777b3ad317eab02f41faf21a95cb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0/supabase_2.117.0_linux_amd64.tar.gz"
      sha256 "69c05f85b9e47ee706d30f1a6ca8a526b4e337bfd12c7ef1ef522d24e7280d24"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
