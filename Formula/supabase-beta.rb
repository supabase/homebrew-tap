class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.2/supabase_2.109.0-beta.2_darwin_arm64.tar.gz"
      sha256 "190ca32867bf945096fbb637336673810a60e2ce0277124a9571c48f9f56d1d8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.2/supabase_2.109.0-beta.2_darwin_amd64.tar.gz"
      sha256 "2008d1adf3ff5a0ae34dd7923b403a40d1017ad07fce7126caf7390fbb5a980e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.2/supabase_2.109.0-beta.2_linux_arm64.tar.gz"
      sha256 "7680cd4c4df160631486b42c21c5ba33b6622bdf5e5ae2fa631ad195f77f2657"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.2/supabase_2.109.0-beta.2_linux_amd64.tar.gz"
      sha256 "6ea8250e1532e049ca344f35e0af5f0ad854d5e52265e4ca2d213625177f41be"
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
