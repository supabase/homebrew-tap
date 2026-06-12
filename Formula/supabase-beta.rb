class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.9/supabase_2.107.0-beta.9_darwin_arm64.tar.gz"
      sha256 "2d6e3fb9ccc27f8c979277972fc48f4659ca78e9a2edc9b64f5837022e369680"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.9/supabase_2.107.0-beta.9_darwin_amd64.tar.gz"
      sha256 "c16551254c3b730b27254da1743c07c6d961b71e71e72a9b36e8a1fca97ab8a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.9/supabase_2.107.0-beta.9_linux_arm64.tar.gz"
      sha256 "4a10d5b41a07661503e99986c400be7f45f99be38787261f4a3bbc305d558daa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.9/supabase_2.107.0-beta.9_linux_amd64.tar.gz"
      sha256 "2876b31c0da59b51b81456064d933d2d10532d4df33122ed1e821f6438adadc0"
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
