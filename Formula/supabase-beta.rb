class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.11/supabase_2.103.0-beta.11_darwin_arm64.tar.gz"
      sha256 "861460366e936a3c7946b962847968f009622368ba2d2307786c8dce764823f5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.11/supabase_2.103.0-beta.11_darwin_amd64.tar.gz"
      sha256 "798eb51d2c60e5734a7f48e3fc93b604e2b2d9a48e309e0b0bc2682468b7e99e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.11/supabase_2.103.0-beta.11_linux_arm64.tar.gz"
      sha256 "7d491f26315b1cae1d894725971fee5f81221f55ff4796ee927222b0eeba6237"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.11/supabase_2.103.0-beta.11_linux_amd64.tar.gz"
      sha256 "d020139303b5142e6add738370855842b910db7f657608c0d34ebb296a084a64"
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
