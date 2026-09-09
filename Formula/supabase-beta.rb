class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.8/supabase_2.118.0-beta.8_darwin_arm64.tar.gz"
      sha256 "1309de4a42b56d7f858d7c5161b569da1573b5b1fc250c5c78a1712e865238fb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.8/supabase_2.118.0-beta.8_darwin_amd64.tar.gz"
      sha256 "0caff89e4a00b843d3fa110150d2e774f26b96cb0170b1f0da600512950bc57f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.8/supabase_2.118.0-beta.8_linux_arm64.tar.gz"
      sha256 "e5074c3519a6b65b5b673982c594e9da54d3aa303f92c0231e807d935289b08a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.8/supabase_2.118.0-beta.8_linux_amd64.tar.gz"
      sha256 "5ceeed2b8c1f35b8fc7d5cd29f322dd59dde5ad763f0eeda4a0d5530475731c7"
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
