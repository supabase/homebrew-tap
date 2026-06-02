class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.1/supabase_2.105.0-beta.1_darwin_arm64.tar.gz"
      sha256 "e3c45ecb075e20b956c681d3dfe238300e9bb8e8bb32816293b895859cad4a17"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.1/supabase_2.105.0-beta.1_darwin_amd64.tar.gz"
      sha256 "b58f1688cf1de7b7afb70d3b4ed35979d2576a466c987daa266c627fab9b3e10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.1/supabase_2.105.0-beta.1_linux_arm64.tar.gz"
      sha256 "502d0c764680df40e0091ee6275cc1dc85f35d209ed4c1719a6ec33709c16daa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.1/supabase_2.105.0-beta.1_linux_amd64.tar.gz"
      sha256 "58823ba9bb9bc472bfe318888ec3626793118d3a6b2f5a134962a5588d3b41a9"
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
