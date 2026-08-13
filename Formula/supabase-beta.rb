class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.3/supabase_2.115.0-beta.3_darwin_arm64.tar.gz"
      sha256 "20514d1c250d7b5bb17ef418d0d9dbbd9c19ab954151b3196eaea3ddbe776617"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.3/supabase_2.115.0-beta.3_darwin_amd64.tar.gz"
      sha256 "763d9a2d8148ebe741032158f0588a0cb88c5d97f4f1b149a676e12bd106a8cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.3/supabase_2.115.0-beta.3_linux_arm64.tar.gz"
      sha256 "f5f2af766d3ec750907faf3286c83a16dd15ec9b230ffff36f8897aa30530711"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.3/supabase_2.115.0-beta.3_linux_amd64.tar.gz"
      sha256 "ad2de05d55d1c64adcb29992741914f86eba7184b68bcf4e6fab53cf8a4a5b74"
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
