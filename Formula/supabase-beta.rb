class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_darwin_arm64.tar.gz"
      sha256 "b7c12f85284a0a246919f61a08a6c9ca241cdd3fd35ed74e38ba4995f7c49a24"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_darwin_amd64.tar.gz"
      sha256 "e3dc528abfeba9d8c2443de981b4e955d79c05e5b1f1cfc6b95461d4ebd2d5a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_linux_arm64.tar.gz"
      sha256 "87142f226bb7d180031d90eb4937e179360085faa5891d4226bb1cd1da783667"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.8/supabase_2.103.0-beta.8_linux_amd64.tar.gz"
      sha256 "3c429e2539ba145239a0a3dc94db005cb85f0b708af6d91ccfea3374ddedebe6"
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
