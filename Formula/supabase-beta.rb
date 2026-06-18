class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.3/supabase_2.108.0-beta.3_darwin_arm64.tar.gz"
      sha256 "7ffd1eb8f506b08ee8446041c1b60fe3c65e7140c9716abd8206ae3623980f69"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.3/supabase_2.108.0-beta.3_darwin_amd64.tar.gz"
      sha256 "100acfb60d0fa2ba6ab6a9757912c7802bac847d66e0c29c7f6351b84c09cf14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.3/supabase_2.108.0-beta.3_linux_arm64.tar.gz"
      sha256 "2af52ad047556983dced3a0691f64af4bcde851130bbead875062f1d94a500ef"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.3/supabase_2.108.0-beta.3_linux_amd64.tar.gz"
      sha256 "08016ea6e81b2aab88ba534c10cbdc106f6828eb8f318a7eb4dba41fbd5b55ee"
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
