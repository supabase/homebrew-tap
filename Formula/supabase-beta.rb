class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.2/supabase_2.99.0-beta.2_darwin_arm64.tar.gz"
      sha256 "5149edd3ba545344844ec89266941efc6d9e3b688fa874ae3fa4a88d4c81a974"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.2/supabase_2.99.0-beta.2_darwin_amd64.tar.gz"
      sha256 "5d674104a8f3b9ad8147e6f6dcd7185c2b8bcb9e2bb93b49d6fc96daab8243ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.2/supabase_2.99.0-beta.2_linux_arm64.tar.gz"
      sha256 "b493392122e58b88f67f576e4479f81592b049a5e3b41c0a4c5a93b5aacc2705"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.2/supabase_2.99.0-beta.2_linux_amd64.tar.gz"
      sha256 "26cef3eeaf4ff90c21be5e4c91d2e916a955291fa184c90d57880c8f10e3787e"
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
