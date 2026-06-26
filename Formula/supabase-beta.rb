class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.4/supabase_2.109.0-beta.4_darwin_arm64.tar.gz"
      sha256 "a15f594950a4fdbe326ef9f4e688d3a3af8aebccceb8d81dd710169a9a56e5f7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.4/supabase_2.109.0-beta.4_darwin_amd64.tar.gz"
      sha256 "71fd2abe086ddbb98091b1bd300a0921e371aadc001c05f50591be9f43e7392b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.4/supabase_2.109.0-beta.4_linux_arm64.tar.gz"
      sha256 "5795e493ee0c60453a98956b349fb3db5e59b523fbe825e55009e58c90b5ce58"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.4/supabase_2.109.0-beta.4_linux_amd64.tar.gz"
      sha256 "fb950af11684b7c84b8cdfb36d3daa5659f758393e6f50f97e96d3e28b867eeb"
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
