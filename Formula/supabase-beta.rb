class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.1/supabase_2.108.0-beta.1_darwin_arm64.tar.gz"
      sha256 "7e99689be6ad634ea39bd18970583c780bd3dc88a868a5efbd6e052d666337f8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.1/supabase_2.108.0-beta.1_darwin_amd64.tar.gz"
      sha256 "a9c6b94f0c98375cc1a215dc0dd659a16236546bd30964f129dceddfefbbd183"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.1/supabase_2.108.0-beta.1_linux_arm64.tar.gz"
      sha256 "c4595b99833482b695d74c1ecba2fadc58a9a7032f17e7f429f746a3029d91d4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.1/supabase_2.108.0-beta.1_linux_amd64.tar.gz"
      sha256 "ef6b7328fe6efd714c411aab7d164c125fa55c1d6a8dba47145c27f13fd20b52"
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
