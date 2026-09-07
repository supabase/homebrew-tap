class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.23/supabase_2.117.0-beta.23_darwin_arm64.tar.gz"
      sha256 "5afea4b0d0af717f37ce014baa226d1959b3856268884ca1aaaee7cc260e7d39"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.23/supabase_2.117.0-beta.23_darwin_amd64.tar.gz"
      sha256 "2420d52d6dd0279a0f45510e4c7e68c449b11770661a87d82d86d4c816f4e2e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.23/supabase_2.117.0-beta.23_linux_arm64.tar.gz"
      sha256 "3933995e4d5857151899a8f6290c47db61476145139964dbd6f9c41d3fa4c978"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.23/supabase_2.117.0-beta.23_linux_amd64.tar.gz"
      sha256 "306f273984102994cdc761ea22f7e3f41a049b70a992bcadc42bf45f52cd34ae"
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
