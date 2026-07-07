class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.5/supabase_2.110.0-beta.5_darwin_arm64.tar.gz"
      sha256 "e1298306519f8ce613ff007c94570f28d1d9bb473815b5eb9ff89d8fd7d62ece"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.5/supabase_2.110.0-beta.5_darwin_amd64.tar.gz"
      sha256 "dbf1a5c92005e3d7d0f6c7f12a00771eff555fd7b4895163a1f7141efd837917"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.5/supabase_2.110.0-beta.5_linux_arm64.tar.gz"
      sha256 "16e47ccaf7b1bbb4983d7bcf16b48a85389b93617fe550ed6cda2f69a0dc2b01"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.5/supabase_2.110.0-beta.5_linux_amd64.tar.gz"
      sha256 "d90ffe0cd25be6d05b0300a6e53301121c86ec33958f25ecb150834667978335"
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
