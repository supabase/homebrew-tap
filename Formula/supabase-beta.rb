class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.4/supabase_2.107.0-beta.4_darwin_arm64.tar.gz"
      sha256 "c30524cba9be83463ed0667f67c495b54a2f4ef8ba5d0eba28388acdf226573c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.4/supabase_2.107.0-beta.4_darwin_amd64.tar.gz"
      sha256 "2eae26079fc2a4f966c6118c7ad6346cc9c90e64e156c95d4a766a0df807f252"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.4/supabase_2.107.0-beta.4_linux_arm64.tar.gz"
      sha256 "4549d1e17d98680ca6e45698cf9acb76a0c079b669d78b5778395afcd58d0a12"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.4/supabase_2.107.0-beta.4_linux_amd64.tar.gz"
      sha256 "b109688c6b1f1946b9467cbc2e986862d9db01f72609d1dcdf81377d4b7fe85f"
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
