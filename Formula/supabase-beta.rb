class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.16/supabase_3.0.0-beta.16_darwin_arm64.tar.gz"
      sha256 "459a352a31c7ad6b93a9667a3eebd4653beb0a5ad884845518af0967438ed275"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.16/supabase_3.0.0-beta.16_darwin_amd64.tar.gz"
      sha256 "ae5d7a6c3f6e07acdd5dfe312731685c36f51c6308512d60663492a014ea0250"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.16/supabase_3.0.0-beta.16_linux_arm64.tar.gz"
      sha256 "68ef1a5caafbbdbd34e55d6a5908b3128405c957a77a18ac58358004600f5983"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.16/supabase_3.0.0-beta.16_linux_amd64.tar.gz"
      sha256 "40a2fcf248cae1ab27f2814fa8f325fc25d676324f4ac6538e4d31cd725d9f33"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
