class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.6/supabase_2.109.0-beta.6_darwin_arm64.tar.gz"
      sha256 "726cb030007114ee11ab98424b948cc0690d5b6974805ee9fd88c20ac86b758d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.6/supabase_2.109.0-beta.6_darwin_amd64.tar.gz"
      sha256 "28f3b111bbbf29db66e49f14c76d93593883d89fc0e7b7aaeeb6dd38ff91f5b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.6/supabase_2.109.0-beta.6_linux_arm64.tar.gz"
      sha256 "053247db8b33c6bc0adbfb487b124c2590e49dd12071c4ae18d598c158d0b9d1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.6/supabase_2.109.0-beta.6_linux_amd64.tar.gz"
      sha256 "75cc6a078cf84c7a03d3f634d4d1ca7a851dbf2395bf914312bfb6495fad9c7c"
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
