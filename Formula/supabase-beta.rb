class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.21/supabase_2.108.0-beta.21_darwin_arm64.tar.gz"
      sha256 "b062dc52101ff83904811c34f3c79cc5cba3a2607386dee43b658153297f61a0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.21/supabase_2.108.0-beta.21_darwin_amd64.tar.gz"
      sha256 "ac0e550e7bc6224306fb3fd29744282cbfa8ffa8d6822d3f82b347f4d9b91d57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.21/supabase_2.108.0-beta.21_linux_arm64.tar.gz"
      sha256 "00fdf1a4ba5febcf7bb48249ad735efeefe0a14857992e6bca2e998ed380a2ce"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.21/supabase_2.108.0-beta.21_linux_amd64.tar.gz"
      sha256 "1ea888d914a797f5f8afcec69bdf1a035b9b5f86937e2bc741fa6d617d2d9028"
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
