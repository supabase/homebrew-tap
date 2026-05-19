class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.5/supabase_2.100.1-beta.5_darwin_arm64.tar.gz"
      sha256 "f5eda8ffceaffaef2fc7a3f37dfe6a483b7fb6bcd7a2977661b6143c85052efa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.5/supabase_2.100.1-beta.5_darwin_amd64.tar.gz"
      sha256 "8ffe78d81a26a8452391c7dbccd6121d2962ac365d3468aed67005797ea51550"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.5/supabase_2.100.1-beta.5_linux_arm64.tar.gz"
      sha256 "0bc88b493801618a636ad0744a3cd968cac466affe759dafa9de8a77d25eea5c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.5/supabase_2.100.1-beta.5_linux_amd64.tar.gz"
      sha256 "eaebec075f54d50822fd980d430484c69ab89ef02333d3e0320696e5089dadf4"
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
