class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.16/supabase_2.109.1-beta.16_darwin_arm64.tar.gz"
      sha256 "6bfe849e1c5c50f7baad0d00aab37e28e15bdba666ea18bfa0c8a871e84bd942"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.16/supabase_2.109.1-beta.16_darwin_amd64.tar.gz"
      sha256 "828218a3fa5639b80c9e2076bdab80090b4872436d46084aa7b76a67a4ae1e22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.16/supabase_2.109.1-beta.16_linux_arm64.tar.gz"
      sha256 "e9216afc78eabaacd1081832532cdc079d68ac6d150e2f2a9c74db4b4cfc2b2d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.16/supabase_2.109.1-beta.16_linux_amd64.tar.gz"
      sha256 "fb31edbcaed3d5b1f5d5a1a9837f130951487f9b9f6f843823223e46671ed261"
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
