class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.17/supabase_2.102.0-beta.17_darwin_arm64.tar.gz"
      sha256 "8844a4fb42d930ab886a3a6fd887de164add8c2c109cd35d869e4772806d8429"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.17/supabase_2.102.0-beta.17_darwin_amd64.tar.gz"
      sha256 "1b163761e5b554016649f6f4889c212704ce8331cdbe7bef2633820a6631e40b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.17/supabase_2.102.0-beta.17_linux_arm64.tar.gz"
      sha256 "383070afde88a4707af07a45eba2911d92940466198d4a4185c85ba759ff08fe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.17/supabase_2.102.0-beta.17_linux_amd64.tar.gz"
      sha256 "b3b92e86624e3da1c2ba6e0571c1c26998a46c5c5f4becddf9226c7218f42e73"
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
