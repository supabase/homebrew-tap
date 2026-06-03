class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_darwin_arm64.tar.gz"
      sha256 "dd4952dae6ec88a54b365a7d3ef9caf4136b37974c31ce4006b7d51d267b954d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_darwin_amd64.tar.gz"
      sha256 "e48e1decdc2ec02a5f92273c45b311d67726cc0bb63477fec6f85df0c23d4f5c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_linux_arm64.tar.gz"
      sha256 "bb3fcc3209f53454a2b4784d466a4bcdd9485ce5e273c34a85ff46fc8e2c576f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.7/supabase_2.105.0-beta.7_linux_amd64.tar.gz"
      sha256 "422cea25d47b7157cb9567ff5a2df16f76fd80be5527c29c458176f2f1446606"
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
