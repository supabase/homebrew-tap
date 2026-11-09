class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.28/supabase_3.1.0-beta.28_darwin_arm64.tar.gz"
      sha256 "6db9de6ba1c9a360e697740a151739426503e25841a393845e4a8f296a2ae845"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.28/supabase_3.1.0-beta.28_darwin_amd64.tar.gz"
      sha256 "cc89cbe9659435c32c1abb3a49a84ca9a0b51c82f3584990c5f1abbec9ef7b5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.28/supabase_3.1.0-beta.28_linux_arm64.tar.gz"
      sha256 "5477d0d8d9fed70432aad91cd3940d7d39df8a59e55a0453a5ebf20cb742b7f4"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.28/supabase_3.1.0-beta.28_linux_amd64.tar.gz"
      sha256 "d01974d12a1dea909baec27c2ff07f342c79e405cd85e7f92f5ca70ae05b1f0c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
