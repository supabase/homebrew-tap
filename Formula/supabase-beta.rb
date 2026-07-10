class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.22/supabase_2.110.0-beta.22_darwin_arm64.tar.gz"
      sha256 "a536cfcc040ecd440201ee9ea66450a0a45e55ae3c17b95a90e3130b088ba37f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.22/supabase_2.110.0-beta.22_darwin_amd64.tar.gz"
      sha256 "d16ba2bf9e4f6e93ec7e4383b7ca2cb95f277e867588739fb2fb918c70ef4dcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.22/supabase_2.110.0-beta.22_linux_arm64.tar.gz"
      sha256 "39881d268a094f75b1a818c121dbd509342822c9d571eb857964ac7288874bba"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.22/supabase_2.110.0-beta.22_linux_amd64.tar.gz"
      sha256 "bd718758499973e522a8f4bd4a22e16a2e885c943d946930f6b9be2f512bc734"
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
