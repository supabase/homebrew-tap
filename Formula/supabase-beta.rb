class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_arm64.tar.gz"
      sha256 "157335f6bff1bfb99d2a7040c67688d103530bc59a0f5465caf918dbd2471902"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_darwin_amd64.tar.gz"
      sha256 "56279254c32617354031a93760b4a6061797295b963502875bf759cf8d730e31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_arm64.tar.gz"
      sha256 "b8ca92a190f09632c1f7ffeb15f5494b6f9e352f04b016d66ceb80f8970b8995"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.22/supabase_2.106.0-beta.22_linux_amd64.tar.gz"
      sha256 "fd743319adff9fb65a853990c5afe6cb421c3c8fedac02d1282e5a5c457a8851"
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
