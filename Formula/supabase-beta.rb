class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.17/supabase_2.107.0-beta.17_darwin_arm64.tar.gz"
      sha256 "8e646199b924a9f9d34a351cc95ddf2ad8b6a5f5daf3da1bf136538e9cbb51f4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.17/supabase_2.107.0-beta.17_darwin_amd64.tar.gz"
      sha256 "6ce12cc4848b7a7eb0203951eb8a055dfffa5d4e118a0e7671776f2faad38598"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.17/supabase_2.107.0-beta.17_linux_arm64.tar.gz"
      sha256 "dc0cc648cde3cff3544b1e48c536ddffad21f86e96ccc48b880e28f6ea89adbb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.17/supabase_2.107.0-beta.17_linux_amd64.tar.gz"
      sha256 "7feaf4c3fbd13967bcb7f6555376559b2300bedb0c9d5a0835afc982edda5e06"
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
