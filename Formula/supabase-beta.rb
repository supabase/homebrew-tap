class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.19/supabase_3.2.0-beta.19_darwin_arm64.tar.gz"
      sha256 "44f8d52b384acc7884f1a58d9a335d563333516748ae6b441cfc30e75c69c7d7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.19/supabase_3.2.0-beta.19_darwin_amd64.tar.gz"
      sha256 "59858406ccfeb17180df84e10dc237eaeed7b5e06b097ea21c6a5b83d2d57fb6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.19/supabase_3.2.0-beta.19_linux_arm64.tar.gz"
      sha256 "da4827a0a5290443b85e05ef9cd4e8cd8aa9bacc66be6971135a0c4c99dd370c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.19/supabase_3.2.0-beta.19_linux_amd64.tar.gz"
      sha256 "cb5ccaa7ee467f5497ba2adb0ddab559858b0941648fabf8a147ae5babebf71f"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
