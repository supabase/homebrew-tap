class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.13/supabase_2.102.0-beta.13_darwin_arm64.tar.gz"
      sha256 "28f8941b2be29ab1b1690d4761a7d5980b7c826e1602a7419b1b2efa727c27c4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.13/supabase_2.102.0-beta.13_darwin_amd64.tar.gz"
      sha256 "3f116e1ba915156dee6fcd8ba7556dd8ca986e3561d620e34367e29dfe42cc3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.13/supabase_2.102.0-beta.13_linux_arm64.tar.gz"
      sha256 "1f8153ae9a55a1d6df7973e1bb2a3d1a1fe35e3b26bf6b1b4d561e5022f9ce2d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.13/supabase_2.102.0-beta.13_linux_amd64.tar.gz"
      sha256 "2e8e0f40ce73d3bc4dbe94d131dbee0516bfd27789e658906c9e3f49c39a90ce"
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
