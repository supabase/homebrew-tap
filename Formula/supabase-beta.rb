class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.6/supabase_2.110.0-beta.6_darwin_arm64.tar.gz"
      sha256 "21e757de98dcbefa8e80a4e145f81fb5c8fe1f0a93ad8bfca77a7c1c153afcfb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.6/supabase_2.110.0-beta.6_darwin_amd64.tar.gz"
      sha256 "660fb904d08760355b695a721c46a255dae61c8720c354ee0c483fb7e76e5a58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.6/supabase_2.110.0-beta.6_linux_arm64.tar.gz"
      sha256 "66916ff6b0f263b6cac703903f86494e48455a7ea42cde95b34b7d7642a91117"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.6/supabase_2.110.0-beta.6_linux_amd64.tar.gz"
      sha256 "8af71b1ad1af5ed86f0f0c591f63843fa7effb77a9e3d21d1e79651f844e0dc9"
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
