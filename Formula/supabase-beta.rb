class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.101.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.1-beta.1/supabase_2.101.1-beta.1_darwin_arm64.tar.gz"
      sha256 "e7f099aa5ed662da2099c99adcf782496f150a3a4a2e334cca46e42a60fa21c6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.1-beta.1/supabase_2.101.1-beta.1_darwin_amd64.tar.gz"
      sha256 "c94e2790f23d0b31bd368c61af33ba6448e1e5a88c2138f86bbf88627fca4895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.1-beta.1/supabase_2.101.1-beta.1_linux_arm64.tar.gz"
      sha256 "6023bc2753af022ef51d12c8a8d6cb4e9d056da6246013a3e8d6846b659d69e6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.1-beta.1/supabase_2.101.1-beta.1_linux_amd64.tar.gz"
      sha256 "209772095dc27733b4b8616e75c14c4be17fbfa40116a49f29ebddc29505343f"
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
