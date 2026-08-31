class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.8/supabase_2.117.0-beta.8_darwin_arm64.tar.gz"
      sha256 "aa636d7018d7c269a4b8257cac753ef8bdc898f7f2f90397e8d667ef1f74593f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.8/supabase_2.117.0-beta.8_darwin_amd64.tar.gz"
      sha256 "dcfc529a05e38d13d133d2aabd1ab57f828c8232820446e8d8f9ec8a665674cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.8/supabase_2.117.0-beta.8_linux_arm64.tar.gz"
      sha256 "20d42da53aa42757a0d7a372b428ec0b94d96e362117bf2d1a461b391c574c87"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.8/supabase_2.117.0-beta.8_linux_amd64.tar.gz"
      sha256 "d8bd4aeedd9c1cb512103c8b56633459db7170fcc6ef60600a2b2adf3555005c"
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
