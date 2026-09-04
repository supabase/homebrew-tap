class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.17/supabase_2.117.0-beta.17_darwin_arm64.tar.gz"
      sha256 "dbe8c96c9a31f32439c75f7cae2ffe9ec003d9f8d1eb9fdd699f8089f87564b6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.17/supabase_2.117.0-beta.17_darwin_amd64.tar.gz"
      sha256 "ba08f5f33727fa0a98bfb05d77b770a975a2ad103de3292d8affb39643ea04b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.17/supabase_2.117.0-beta.17_linux_arm64.tar.gz"
      sha256 "de92303cc568c163043e2db34443e21d20a3cfb6c8fcad79fe6d4e6987bbc9c2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.17/supabase_2.117.0-beta.17_linux_amd64.tar.gz"
      sha256 "d7f0510cd8e491b86dadbec231aea963d0fd4e0dec5c354990d93ebc835bdbf7"
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
