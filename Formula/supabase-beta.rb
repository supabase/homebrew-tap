class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.33/supabase_2.110.0-beta.33_darwin_arm64.tar.gz"
      sha256 "ba8dc0b11a52c09f2e9b906181f26b9a58c3058d82d7fec29e51b5d8d5972376"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.33/supabase_2.110.0-beta.33_darwin_amd64.tar.gz"
      sha256 "0d934cfcd9b2fe2b1b5f235c3989aac366fc9249fb5c367f3f02a74cfc90301c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.33/supabase_2.110.0-beta.33_linux_arm64.tar.gz"
      sha256 "e7e18d4d6a4c54386af48e08a5ff954512965d0d27b5a995563d97625a346ae0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.33/supabase_2.110.0-beta.33_linux_amd64.tar.gz"
      sha256 "55d2c2fb6ac8367ae8dda4ad4ec0a959b86a51e524393986ba6b604f3eae333e"
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
