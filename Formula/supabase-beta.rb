class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.4/supabase_2.111.1-beta.4_darwin_arm64.tar.gz"
      sha256 "3c5c9fafa3a683890be4dc23a76ad756f8a3605a4dcf18ff982f06dfa90f3753"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.4/supabase_2.111.1-beta.4_darwin_amd64.tar.gz"
      sha256 "12c44a46cc4dac791237961ddb8a674740a8f9a7e01d21b1a4d198f81d0b0d67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.4/supabase_2.111.1-beta.4_linux_arm64.tar.gz"
      sha256 "dd9d34c586b53b516857dc91bd53555e064f18acac53997a197a119e6d1a5035"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.4/supabase_2.111.1-beta.4_linux_amd64.tar.gz"
      sha256 "759f449bf15ab310bd4934d405bffab673b63f610f190dd335484c04c064754a"
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
