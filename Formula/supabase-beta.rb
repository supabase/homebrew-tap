class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.18/supabase_2.107.0-beta.18_darwin_arm64.tar.gz"
      sha256 "8a3e62c877ba8579085d4558bae93f1c7adb9e04b445b01269ba345d4ed9b179"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.18/supabase_2.107.0-beta.18_darwin_amd64.tar.gz"
      sha256 "00be7029a693842fc18c330b48f3544134950c67d1e4401689c23e07a1ab0769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.18/supabase_2.107.0-beta.18_linux_arm64.tar.gz"
      sha256 "f54029a3c75c4030d636a199829ea98b3e46f8da449e5d9cd17d35623b5afcc7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.18/supabase_2.107.0-beta.18_linux_amd64.tar.gz"
      sha256 "b0e105dfafe27f7e3e2c70748041c1e540dd577b88ca9aa9ae2ba7dba6453f2e"
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
