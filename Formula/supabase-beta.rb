class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.26/supabase_2.108.0-beta.26_darwin_arm64.tar.gz"
      sha256 "4005dc055f93bb6990540881a0ed159820751b74e130d7a2f6bb1050df503985"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.26/supabase_2.108.0-beta.26_darwin_amd64.tar.gz"
      sha256 "bd98ebc0785c5be810c75ccda487b7720a3ab0c53831b9a07b688c0c6dc814dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.26/supabase_2.108.0-beta.26_linux_arm64.tar.gz"
      sha256 "1741d7b794fcbdc10c7f82c09a0dca82eca9df3aa3017700cdfc4d9298cf3656"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.26/supabase_2.108.0-beta.26_linux_amd64.tar.gz"
      sha256 "e9eb25af1176344804c29e75b72b0ef4c21c91ef57f68ee37d49e95c884029dc"
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
