class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.13/supabase_2.106.0-beta.13_darwin_arm64.tar.gz"
      sha256 "0d0bb75d3a98dcf9c83e80a5559cb8053e267f8fbb335ef6607beed41cec4f51"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.13/supabase_2.106.0-beta.13_darwin_amd64.tar.gz"
      sha256 "91afb9383946a6ebac92604ae1b11c0d345f19819243800ea4ebc230f6ec6387"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.13/supabase_2.106.0-beta.13_linux_arm64.tar.gz"
      sha256 "f03746a009f06f5ee51b8a4bbc53957d1f868392634d8a38dd77934d3ea28f18"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.13/supabase_2.106.0-beta.13_linux_amd64.tar.gz"
      sha256 "910985f2e606eada0737d6225cfa6e0c64f7bc7fa97aa6e9ee424dfc54cde2c9"
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
