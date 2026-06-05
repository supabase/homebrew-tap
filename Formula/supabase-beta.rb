class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.3/supabase_2.106.0-beta.3_darwin_arm64.tar.gz"
      sha256 "a7d6d59b07966c319d974e98540cf6e4b7117817ad309846ebb2162c33f7800c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.3/supabase_2.106.0-beta.3_darwin_amd64.tar.gz"
      sha256 "4a0cd485c977a07404211de39bbb3edcc991a0ec88a8e9826507c0db2c6b94b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.3/supabase_2.106.0-beta.3_linux_arm64.tar.gz"
      sha256 "e63af9322f14d46c3bb4a4342829b85b7b9315cce254d098b801aee796322c8f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.3/supabase_2.106.0-beta.3_linux_amd64.tar.gz"
      sha256 "92eb104d2f209130a98a232bf1834c4a038f44dc2cfb9bbee9f774d73a097440"
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
