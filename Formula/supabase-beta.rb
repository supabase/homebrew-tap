class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.16/supabase_2.107.0-beta.16_darwin_arm64.tar.gz"
      sha256 "1cfbfd5350e9096d37162622e8a3b9ac045c446f161aad9fdd49ebdae064d6aa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.16/supabase_2.107.0-beta.16_darwin_amd64.tar.gz"
      sha256 "8d7ea5e7df0d6d6d54b0ac8ebefef1a652c446325cb598d560da1df1680d5bf4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.16/supabase_2.107.0-beta.16_linux_arm64.tar.gz"
      sha256 "02c9288574051a4d03ecca36a4f122d38a6c7e725a2fa7d64147872effab89c9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.16/supabase_2.107.0-beta.16_linux_amd64.tar.gz"
      sha256 "75c0aa2477c048994b0d04d037baf85bb85d6a3a1af69f7e22bdebe019e8fc42"
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
