class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.3/supabase_2.104.1-beta.3_darwin_arm64.tar.gz"
      sha256 "b7c39a99c12f63ee1fc7b8d76ca07bdc4ab4e9e6f06b601616cf87a42e27c24d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.3/supabase_2.104.1-beta.3_darwin_amd64.tar.gz"
      sha256 "0138139fdf33aaf177d3d10c1123ab6de91d1323e8afbd01586d3db25d13be05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.3/supabase_2.104.1-beta.3_linux_arm64.tar.gz"
      sha256 "cee45ea8f2ffc26da57e46e1b14e9b1274271596daea613676dfce37afb3ebbf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.3/supabase_2.104.1-beta.3_linux_amd64.tar.gz"
      sha256 "0a31e3d9b58768d2972e3c4ad002ebdcbdec31b855df5cf9d79139605a3a67d1"
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
