class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.2/supabase_3.0.1-beta.2_darwin_arm64.tar.gz"
      sha256 "e30d0c4be8c357bbcc8c3be6999ed1fd5224779391d5dc2c7243921b12c671bb"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.2/supabase_3.0.1-beta.2_darwin_amd64.tar.gz"
      sha256 "b60322f7462cdf2b1844ac94bf06bc4b38b3cc9c55f5931cb0adf8ba375a6924"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.2/supabase_3.0.1-beta.2_linux_arm64.tar.gz"
      sha256 "d49b81127dc762408fcf5efdf95c6bf3eba8a72d996ad882ada37b0ff9b5cde3"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.2/supabase_3.0.1-beta.2_linux_amd64.tar.gz"
      sha256 "491a3c85b9e7f0b026d2bd3efc853a2c4802bad8556f31378e134cd6cd6cb317"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
