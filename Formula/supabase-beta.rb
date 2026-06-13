class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.11/supabase_2.107.0-beta.11_darwin_arm64.tar.gz"
      sha256 "752764cdd558a090b6bef66b36d135d9040840ebd2cd81c1038459e1aaa9b8b3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.11/supabase_2.107.0-beta.11_darwin_amd64.tar.gz"
      sha256 "cbed2d2c6549f1676074d742ef344429932a032c7cd63891aa62a6d75aab19bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.11/supabase_2.107.0-beta.11_linux_arm64.tar.gz"
      sha256 "21dbd344ef4f4d904498f9d8d6228083a50cc80fa292659a67918b10ba4392bd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.11/supabase_2.107.0-beta.11_linux_amd64.tar.gz"
      sha256 "8e497254378190a1d028f2c7066fe0c6e12f8344a5831d163221c72d243956bb"
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
