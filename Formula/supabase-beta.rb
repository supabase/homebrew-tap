class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.33/supabase_2.108.0-beta.33_darwin_arm64.tar.gz"
      sha256 "fe9ab13b671329e56079007292f0ed8e3153baef723eb1178d2a699934f3c54a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.33/supabase_2.108.0-beta.33_darwin_amd64.tar.gz"
      sha256 "041fa4fd1492bfabcb5880bd3c9f52384eb5904a135adbff435176bbaa30b0e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.33/supabase_2.108.0-beta.33_linux_arm64.tar.gz"
      sha256 "8eca7da804e41e4232b4c6923ee724411be11b72067e2724761b5d156d1cecd1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.33/supabase_2.108.0-beta.33_linux_amd64.tar.gz"
      sha256 "b14e95e2136388d014f88d9bcc6fc74127ad0cdf6f08a7677cc804e12f2fad0a"
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
