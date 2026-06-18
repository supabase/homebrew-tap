class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.6/supabase_2.108.0-beta.6_darwin_arm64.tar.gz"
      sha256 "4384bb69232bc74269f177300d4853e95d01af8335119068f497b03fab631611"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.6/supabase_2.108.0-beta.6_darwin_amd64.tar.gz"
      sha256 "1dbf7339140d98d55aff065f87d04b527bf83f510bcc889a40921c432e1f3c17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.6/supabase_2.108.0-beta.6_linux_arm64.tar.gz"
      sha256 "5221430f85a781852042bf2489f85472bb5390c1283301caa158ad98dd2f7a29"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.6/supabase_2.108.0-beta.6_linux_amd64.tar.gz"
      sha256 "d51c7ee8afa689e728d6d0cf1d1e2ed95de0f2472eefd4496d9b8f32e21f2663"
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
