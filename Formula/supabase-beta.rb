class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.3/supabase_2.117.0-beta.3_darwin_arm64.tar.gz"
      sha256 "d382df2a98b1db8bed991a8017741252b437c01032114b7358e423c05479c63d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.3/supabase_2.117.0-beta.3_darwin_amd64.tar.gz"
      sha256 "618fc85040266ef4265f8da18acb76966b6d402b8d660df199a86bcf022ddb53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.3/supabase_2.117.0-beta.3_linux_arm64.tar.gz"
      sha256 "19364f84220f539406c2c336c3c3648250c77f894e951002080757ae1764d6c9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.3/supabase_2.117.0-beta.3_linux_amd64.tar.gz"
      sha256 "9c238490dc22f1a0ff456c13db9f18d78baf14e0dbceb2803f34c8cc0382db56"
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
