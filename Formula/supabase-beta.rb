class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.19/supabase_2.108.0-beta.19_darwin_arm64.tar.gz"
      sha256 "1d0d38a0e67e3eaf80604469632a481dd6a5045b916769346d870898db204794"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.19/supabase_2.108.0-beta.19_darwin_amd64.tar.gz"
      sha256 "2c1f3b23af8ac73755c51257096d7bdc6e2827125f0c1b631b3bbdffadeb5e1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.19/supabase_2.108.0-beta.19_linux_arm64.tar.gz"
      sha256 "15f51375a8b3ea2a0bc7438fdf78f9fcb21bfaa24c4ece4bce9c355e413d3841"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.19/supabase_2.108.0-beta.19_linux_amd64.tar.gz"
      sha256 "c5d3e82c24a307eb27a69f98de15698b2e2c21af024dd50820649fc76a1aa0a7"
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
