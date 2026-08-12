class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.13/supabase_2.114.0-beta.13_darwin_arm64.tar.gz"
      sha256 "3c4681798a708093a9465dd14d1ebf375bf6bca5c40b9c5d52d1d3a383c419e0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.13/supabase_2.114.0-beta.13_darwin_amd64.tar.gz"
      sha256 "87823ded2fb0ff8e97a10efd5bc953d391af8a01cfc49ba2a6f7428e469204ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.13/supabase_2.114.0-beta.13_linux_arm64.tar.gz"
      sha256 "06849992a97668b5d79648bd7b7dd66ef06dbb5d07fc1321cce64f2c7ed6cff6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.13/supabase_2.114.0-beta.13_linux_amd64.tar.gz"
      sha256 "779e15eaf2f8ab0169952fd805272d88fbd392a1da9910c526c9355ee649044a"
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
