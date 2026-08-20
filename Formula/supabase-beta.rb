class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.7/supabase_2.115.1-beta.7_darwin_arm64.tar.gz"
      sha256 "e0cc6bf8de2fea0ee0e4abe98c315d2e386a45bb8ee241870d8d7863f37c3642"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.7/supabase_2.115.1-beta.7_darwin_amd64.tar.gz"
      sha256 "2f5df1b0610a8825cc17c9233156951d0f1182cd16266f4558867290666820aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.7/supabase_2.115.1-beta.7_linux_arm64.tar.gz"
      sha256 "61377d7d448d560d226bbfd5ae6362f59f2a7783bc110c0f25ba28d6e7be9e63"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.7/supabase_2.115.1-beta.7_linux_amd64.tar.gz"
      sha256 "5c3414eff96986ae28ece548d3bd62cc0d456eb31c1c24e00ecad7d9f89b0045"
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
