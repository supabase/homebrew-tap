class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.8/supabase_2.106.0-beta.8_darwin_arm64.tar.gz"
      sha256 "5317c87d2ee9f13370c52211e573e6b629b5b5f4a1ea025ab3dda1ba1c8b77ad"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.8/supabase_2.106.0-beta.8_darwin_amd64.tar.gz"
      sha256 "092e591570c9021df52ea5dd1c7ccc7642b4ffddf0851994da1afbcae9c8edd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.8/supabase_2.106.0-beta.8_linux_arm64.tar.gz"
      sha256 "9688614a02e668f4760e49da7eaac29859515d97a0b2110b52ccc27f1094d398"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.8/supabase_2.106.0-beta.8_linux_amd64.tar.gz"
      sha256 "1547d827078c691d9313c79abf731f3951315008a7fd6c15fb6f7f4eb29018ca"
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
