class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.10/supabase_2.109.0-beta.10_darwin_arm64.tar.gz"
      sha256 "8537dcb7bc2999dc831480680890f581189db1cbab8a877f2891e567c2a3d74f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.10/supabase_2.109.0-beta.10_darwin_amd64.tar.gz"
      sha256 "401383fa49d8a73d59c4f148a01b85ca9dbfbd3be253bc3098c39c8163505d5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.10/supabase_2.109.0-beta.10_linux_arm64.tar.gz"
      sha256 "385a8e3cdfc6db1d8aa0a9f97e2ebe9bf3a8e3cb6eccc3ad91672fb168e1ccf7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.10/supabase_2.109.0-beta.10_linux_amd64.tar.gz"
      sha256 "3f3b0c9820568abb643ea89cd2c3f741cfa71cb99a4251b64079db602dac3ab0"
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
