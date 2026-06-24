class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.31/supabase_2.108.0-beta.31_darwin_arm64.tar.gz"
      sha256 "9afd08505612a157c56f4c40c2c23764cee6e479be5872d93081e71372646736"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.31/supabase_2.108.0-beta.31_darwin_amd64.tar.gz"
      sha256 "c8db664ea7d424b9e9bbcc5a1dc415998b01c276f06147c19be4e3992c6b2268"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.31/supabase_2.108.0-beta.31_linux_arm64.tar.gz"
      sha256 "a1afbda89567bc38a0656c85e55f47b7c7dd80507a4711393120f367868230c2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.31/supabase_2.108.0-beta.31_linux_amd64.tar.gz"
      sha256 "1485713a728a710069683186c43550b12fac4da9b8add88d79a917055502575d"
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
