class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.14/supabase_2.107.0-beta.14_darwin_arm64.tar.gz"
      sha256 "5a481ec5d771a8bb75e59beec3132c6a5e4414f39951058382ca01ce0ca54258"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.14/supabase_2.107.0-beta.14_darwin_amd64.tar.gz"
      sha256 "f0e10b5163cfe0fade8335cd3d13342042b8e0094e15e698906f4f348f2e1510"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.14/supabase_2.107.0-beta.14_linux_arm64.tar.gz"
      sha256 "2dec01d5802fc1a7dba90e12246c345aa0bcbbe1f365dec9733db81921aa771e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.14/supabase_2.107.0-beta.14_linux_amd64.tar.gz"
      sha256 "83f81aa0d2acfb8041dbbe023d958a6f6433b4134a0cc82ed3c964999e485775"
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
