class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.12/supabase_2.111.0-beta.12_darwin_arm64.tar.gz"
      sha256 "86aaf0cc472e0094cfffc7a90dfbad3aeb6d9110c2d7a86339bf35a4e3c30c9f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.12/supabase_2.111.0-beta.12_darwin_amd64.tar.gz"
      sha256 "dfbf6ab7e405301e3a1d6590d37bf69b433fe1011ec03737619c3c60fd35de97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.12/supabase_2.111.0-beta.12_linux_arm64.tar.gz"
      sha256 "375478e456a8b3356f585cfce9ac6fde3e2d3ddc1c9a3367bbac06af99f7fbed"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.12/supabase_2.111.0-beta.12_linux_amd64.tar.gz"
      sha256 "c7b28580801ce711474d29a3ebfa2052a66081a773d75d45eada67e69ed3bfbe"
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
