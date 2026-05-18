class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.2/supabase_2.100.0-beta.2_darwin_arm64.tar.gz"
      sha256 "e4a8400cb581cfb1bf801d9ce10ef8be23d775f3deaa3f4c20d975eaf99210fc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.2/supabase_2.100.0-beta.2_darwin_amd64.tar.gz"
      sha256 "221b22ad475424ca84610c639ef524a1f486250c602ef49de729ca3bd5c516f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.2/supabase_2.100.0-beta.2_linux_arm64.tar.gz"
      sha256 "1bca4187575ddc7d82856401f57b600fe4062015f124ca5d40a4aa9bc07e0cdc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.0-beta.2/supabase_2.100.0-beta.2_linux_amd64.tar.gz"
      sha256 "98235c52cd53a6d66f67f8ebafd87b89b04d67d3dabc353dafb0c94ec8ae3d45"
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
