class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.11/supabase_2.115.0-beta.11_darwin_arm64.tar.gz"
      sha256 "9c8a20d794dcc8d816905ed0e31bdf9e240838f9051502270335885577ee71e8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.11/supabase_2.115.0-beta.11_darwin_amd64.tar.gz"
      sha256 "b23e97219960bb443e3ac73ba0d4c9d2f6b23249d5ca72887f0f7ae9e3189b1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.11/supabase_2.115.0-beta.11_linux_arm64.tar.gz"
      sha256 "f16cfee311cc3e9b38a4662b5e6ff3f1e76e3fe605c6bbdf4ed90890419aba5b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.11/supabase_2.115.0-beta.11_linux_amd64.tar.gz"
      sha256 "d8621f9bd92b26ffe0d49df072ccfeeead44307d197c10321647fe9ff2f6a2d9"
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
