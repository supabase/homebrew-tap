class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.9/supabase_2.102.0-beta.9_darwin_arm64.tar.gz"
      sha256 "c37ee380c511c78bb9aaa5bd5cd1b1592f646710d95f9c1ab2817e81b2ce047a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.9/supabase_2.102.0-beta.9_darwin_amd64.tar.gz"
      sha256 "a4119ac286325ecbd85e1700a8d3ea75250faec8c6b0415e2ebf2e5121af0b8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.9/supabase_2.102.0-beta.9_linux_arm64.tar.gz"
      sha256 "2151ba336e84f88e5a0df85ea4cf1fbf4324a1a8d3b10fcc7039bd85520bd19f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.9/supabase_2.102.0-beta.9_linux_amd64.tar.gz"
      sha256 "60c186d80d20fc964b8fd8327003507b1706b6b11d89b444144f16702e829644"
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
