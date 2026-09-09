class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.14/supabase_2.118.0-beta.14_darwin_arm64.tar.gz"
      sha256 "1344ef6949450a6f7c36cba3eae8f214920850e37e3534e4d8b03225dc2f2b83"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.14/supabase_2.118.0-beta.14_darwin_amd64.tar.gz"
      sha256 "0a545ea2f16816f800a37b7d2cddf4eb12c5a325e1817008cb999cd7f6debefd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.14/supabase_2.118.0-beta.14_linux_arm64.tar.gz"
      sha256 "584067c57d59f7249cf646bd33b20d282e864a4cc6802b56ffe92548ce412941"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.14/supabase_2.118.0-beta.14_linux_amd64.tar.gz"
      sha256 "9f296fc5073a2225fb789e0a6b13108ad15f8090876f5c1ab174a4869b80553f"
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
