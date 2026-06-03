class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.8/supabase_2.105.0-beta.8_darwin_arm64.tar.gz"
      sha256 "afb4b39ddcb1a15d258226c86dcab56d950fffa434bb19adcd3f4d7cac9c43aa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.8/supabase_2.105.0-beta.8_darwin_amd64.tar.gz"
      sha256 "2585fd820f4fb0265867ff2d4421398c90a40d5cbdc20f510d969451471798da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.8/supabase_2.105.0-beta.8_linux_arm64.tar.gz"
      sha256 "f836bb614c4b29c38ed9b7db8181cc6cd2594a02b694ca3b2d6e77b519a55b06"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.8/supabase_2.105.0-beta.8_linux_amd64.tar.gz"
      sha256 "900244991aaebd7d60216ef4cc868f11d22bd75ab5ed93efb6e1e8c99495fdb8"
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
