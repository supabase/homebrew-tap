class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.1-beta.1/supabase_2.113.1-beta.1_darwin_arm64.tar.gz"
      sha256 "8d888eeedece9a037cf30e3913fc56b95df681279343bec2a882f5b86b0a018a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.1-beta.1/supabase_2.113.1-beta.1_darwin_amd64.tar.gz"
      sha256 "ac7b917ea186bb61c98920410bb707eb715b6197e1fa8149960b42e06bb6f4d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.1-beta.1/supabase_2.113.1-beta.1_linux_arm64.tar.gz"
      sha256 "24fbfcbcada0f06c8e39433af6af48b29a0df624552c76f560a8437f4caeaa84"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.1-beta.1/supabase_2.113.1-beta.1_linux_amd64.tar.gz"
      sha256 "cba9751e28053c95e0f29baa76dd445875fff2d2d3f075071fc6f8171a68175b"
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
