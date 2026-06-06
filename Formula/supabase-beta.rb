class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.6/supabase_2.106.0-beta.6_darwin_arm64.tar.gz"
      sha256 "e904e5339334e7291b64d27caa0257718258b67cee4cb734cd38b28fdeaf327d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.6/supabase_2.106.0-beta.6_darwin_amd64.tar.gz"
      sha256 "013179de83c7afe9cf8a5ffe4cf56ddb8e470b70c07ce200cbacd537f8751658"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.6/supabase_2.106.0-beta.6_linux_arm64.tar.gz"
      sha256 "9e972adf17daf978dcbc114e56a8c3063ae86c9ddbd1ed6c8b51e29b65b83ec4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.6/supabase_2.106.0-beta.6_linux_amd64.tar.gz"
      sha256 "fc5b923225c89cfffb4e7adba8b0a31b3c98c9caea3e1fe35d8946d1f95124e2"
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
