class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.5/supabase_3.2.0-beta.5_darwin_arm64.tar.gz"
      sha256 "805969db515f5dba6c8cd98a95aba6fd90b25109c7bb1b03ca17548e915c337c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.5/supabase_3.2.0-beta.5_darwin_amd64.tar.gz"
      sha256 "61cace43b539cae0ebd82f7dc3c725871fbf4889266f22541ba1e23d2a292147"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.5/supabase_3.2.0-beta.5_linux_arm64.tar.gz"
      sha256 "ba2a1e091d70b9adb5193b08d9d83ed2cf943fc72ad7055cee4c1c246f20f2e6"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.5/supabase_3.2.0-beta.5_linux_amd64.tar.gz"
      sha256 "a4ba986938ddd1a845e46ae089b948a27e410a34d9e4b91b5acc063b1f6d3b8a"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
