class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.11/supabase_2.118.0-beta.11_darwin_arm64.tar.gz"
      sha256 "5b0c8f043748e7902f5eb103b04b6087c958ca0500f4ebdcb8f4400035da4e10"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.11/supabase_2.118.0-beta.11_darwin_amd64.tar.gz"
      sha256 "9d0bedc918983eb1d7b097a2f9ca30d363fbb1d0280718b689426d5a9ea61c8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.11/supabase_2.118.0-beta.11_linux_arm64.tar.gz"
      sha256 "f5ee98c7d1c23e49a2153f17d2cf34c8e38db3e8af3fe165c6eed599b2345096"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.11/supabase_2.118.0-beta.11_linux_amd64.tar.gz"
      sha256 "ae940395afc160ca95bc5782337ccf5c45aeb926b4564b3299dde460bb212d79"
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
