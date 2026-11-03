class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.4/supabase_3.1.0-beta.4_darwin_arm64.tar.gz"
      sha256 "5b80f698f388cc89ee2b5560a2db8eb684b7d28fcf162fb6e20bf3b855e81542"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.4/supabase_3.1.0-beta.4_darwin_amd64.tar.gz"
      sha256 "d29aeb17c5fd4b1971fe9ca7e98fff3ea293adc7f706e8d82e70b6273e237ae2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.4/supabase_3.1.0-beta.4_linux_arm64.tar.gz"
      sha256 "42b750cfcf93c81554e7d97bfad6cba405657f3d824c12a928f5131dec9c9338"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.4/supabase_3.1.0-beta.4_linux_amd64.tar.gz"
      sha256 "32c3619bbab172c0707f86a3ed813616966ade844cc7433f3c8f4f852132de05"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
