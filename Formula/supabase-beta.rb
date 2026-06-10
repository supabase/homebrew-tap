class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.21/supabase_2.106.0-beta.21_darwin_arm64.tar.gz"
      sha256 "1b3689af274893e9b7afd917a300eb8d743e83c1eb12bfacb31bb433fab41aed"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.21/supabase_2.106.0-beta.21_darwin_amd64.tar.gz"
      sha256 "99814b6d91cbffd524ee7bf976625cce6b7778b0b457d63c9b7846eeb06d04d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.21/supabase_2.106.0-beta.21_linux_arm64.tar.gz"
      sha256 "c0f5fbcd0af2222a66d4e0e2b840bf081df79b5926ec13a326469274ebe05fe0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.21/supabase_2.106.0-beta.21_linux_amd64.tar.gz"
      sha256 "5f0a3d199f5f52871dfb1adc84663a67e32a105171d67afab0fde496db2648ea"
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
