class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.10/supabase_2.111.1-beta.10_darwin_arm64.tar.gz"
      sha256 "a313c6df850432e11c293b3bf19451355df958f5caa933679af1d8723b2454c9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.10/supabase_2.111.1-beta.10_darwin_amd64.tar.gz"
      sha256 "1c3cf1712de0f3210e16f022227797fa858884a173211ba3e91618080296dd8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.10/supabase_2.111.1-beta.10_linux_arm64.tar.gz"
      sha256 "57ea5793f66358ce7f052f088804a00931dce76c832d4cddf8c7ade0cf075c72"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.10/supabase_2.111.1-beta.10_linux_amd64.tar.gz"
      sha256 "9cf3893e284f27dba4e508793a32dbbe177b5fba87c8db55e304d585370c5645"
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
