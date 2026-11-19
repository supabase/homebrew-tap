class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.9/supabase_3.3.0-beta.9_darwin_arm64.tar.gz"
      sha256 "bd51938869ee3c00037987a29abf863a9f0f281952c744c0d257e21f137356c9"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.9/supabase_3.3.0-beta.9_darwin_amd64.tar.gz"
      sha256 "4e4ce527c001ad997ba43ffa388d4ca46260482ec42391ce81c1e2890102a127"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.9/supabase_3.3.0-beta.9_linux_arm64.tar.gz"
      sha256 "06942aa938c1f4e5761bd66e739422bd3dee9e29cd247c04a6051df3dcf97af0"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.9/supabase_3.3.0-beta.9_linux_amd64.tar.gz"
      sha256 "48775f8b9ced9fabad35438412ecdcec0bb703e1572093b777fa1af1e38e0736"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
