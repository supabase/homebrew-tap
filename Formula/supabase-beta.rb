class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.27/supabase_2.108.0-beta.27_darwin_arm64.tar.gz"
      sha256 "c1ea37770c1c0011b6539b5389fb8a1b532c045f34d2439b7702674c92f600e3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.27/supabase_2.108.0-beta.27_darwin_amd64.tar.gz"
      sha256 "abbc3887ac02c84fb8c6792134f372f1ea8089544ec5d3803670ab42f12ad84d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.27/supabase_2.108.0-beta.27_linux_arm64.tar.gz"
      sha256 "ffcba055dcddaaf9001b8baf8f54ba8b33e785916833db754dbf42dd4831b4ca"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.27/supabase_2.108.0-beta.27_linux_amd64.tar.gz"
      sha256 "dfcc1958795e2e6f0add17d3c8774eea4a157e38d7c63e2b544270e860042cf6"
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
