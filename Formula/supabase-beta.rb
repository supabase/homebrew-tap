class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.2-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.5/supabase_2.100.2-beta.5_darwin_arm64.tar.gz"
      sha256 "c9f1a37b70fcf81600d27f9342e7c91e873358f7793e4d30d4cb4dc17fa417b1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.5/supabase_2.100.2-beta.5_darwin_amd64.tar.gz"
      sha256 "5003ced9f52265974d8d5d1c86f76f55b3affde96a1779c5cdcad94422e46a7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.5/supabase_2.100.2-beta.5_linux_arm64.tar.gz"
      sha256 "bbdf138e2a55955aa1ae1373688d51a5f37e0e3f9e425ea16cb52d6936924857"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.5/supabase_2.100.2-beta.5_linux_amd64.tar.gz"
      sha256 "121d9b1f941008bb24b3edb354f5710162e73ce7f3973c4b261c1ff1481da068"
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
