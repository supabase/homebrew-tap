class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.22/supabase_2.108.0-beta.22_darwin_arm64.tar.gz"
      sha256 "174206785775177fa4021971961e7b4969d1f0f30d47aabf857ce28e024b1d2b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.22/supabase_2.108.0-beta.22_darwin_amd64.tar.gz"
      sha256 "8bd0260ec272aa78bbe6519d0c78886dd17d10f7a8a76632db75faffec2484fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.22/supabase_2.108.0-beta.22_linux_arm64.tar.gz"
      sha256 "4e113b2b924da1f71fe286e8d648860b36718b747a2d78830985a10ef80910db"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.22/supabase_2.108.0-beta.22_linux_amd64.tar.gz"
      sha256 "b54ce1db64b59018af2c9805bf244c7be46058f8e2081e6c8cd793838cfeb829"
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
