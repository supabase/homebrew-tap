class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.10/supabase_2.116.0-beta.10_darwin_arm64.tar.gz"
      sha256 "a10b622b8ee11a6cc282d9a32ce378def85ad1bd96ac2e1a12b8310e10e5792a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.10/supabase_2.116.0-beta.10_darwin_amd64.tar.gz"
      sha256 "180ad12884762a47133e45913414aa461905b2c5b35a9bf6eb6bddd884371e87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.10/supabase_2.116.0-beta.10_linux_arm64.tar.gz"
      sha256 "1f135470ce36e708b7e15c0692b3810fa15dfdc6d6ca7b7a6e38676c3f2d3b67"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.10/supabase_2.116.0-beta.10_linux_amd64.tar.gz"
      sha256 "562089a291cf511242716475acff5f08d062ba5a49eaa9e3f202a882fdfefc0c"
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
