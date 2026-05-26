class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.8/supabase_2.102.0-beta.8_darwin_arm64.tar.gz"
      sha256 "a4712ca0034bf459a4cbff73fa305df03a5b8ff02c4f5949d0f19a1d6619e295"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.8/supabase_2.102.0-beta.8_darwin_amd64.tar.gz"
      sha256 "f761d0d419406a58b3e25e157576803d47ba097d0e339a58c319fd0ca729ac4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.8/supabase_2.102.0-beta.8_linux_arm64.tar.gz"
      sha256 "a1d8eac33ea57897162aca58f2ae5ffd41b3d7fc29641eb3e5ed94c3be6fa0de"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.8/supabase_2.102.0-beta.8_linux_amd64.tar.gz"
      sha256 "d32b4a8560d7aa0fa8e568dbc3825ef5c360792bfc72d733125a9a6ae294f9f8"
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
