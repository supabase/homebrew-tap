class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.18/supabase_3.2.0-beta.18_darwin_arm64.tar.gz"
      sha256 "1ca11d64ac1e1fc60e314f0cf55839bb20fcf3cfcb9b32ec5af517e01a105a90"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.18/supabase_3.2.0-beta.18_darwin_amd64.tar.gz"
      sha256 "0f20dca74a62801797d6ba942b4b6d2d10bfa7a1f7dadf3527ca3de123303a0b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.18/supabase_3.2.0-beta.18_linux_arm64.tar.gz"
      sha256 "f18b0c377130458514e0f75338e277d156b6d3520c72e5133cbcc9cdbf0fd52e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.18/supabase_3.2.0-beta.18_linux_amd64.tar.gz"
      sha256 "eb6a1a880886e12a9c21248f0f71efa34ebd899f411cac980d9a009b661562a4"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
