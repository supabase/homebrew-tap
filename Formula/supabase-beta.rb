class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.4/supabase_3.2.0-beta.4_darwin_arm64.tar.gz"
      sha256 "b5cbbd0fa016a6f11cfc1bf07c7b76bf29a45dfe510776003efa23a0318b9d39"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.4/supabase_3.2.0-beta.4_darwin_amd64.tar.gz"
      sha256 "b561df9c77b569db35e6ee3b09b2e30c8bd377d153a3e5f7b3d39e2287131f7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.4/supabase_3.2.0-beta.4_linux_arm64.tar.gz"
      sha256 "c59fc57e3eebd2875feaa3c28be340bd7a0fb67c29dc4a001bcf0aa9bc621b04"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.4/supabase_3.2.0-beta.4_linux_amd64.tar.gz"
      sha256 "3991e388510c415183637d580d0192f673aed226f134cff4c79896badc9284a0"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
