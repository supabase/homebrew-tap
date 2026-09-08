class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.4/supabase_2.118.0-beta.4_darwin_arm64.tar.gz"
      sha256 "31d5cff98ce7e136b2840e6a1f7a585ceb2023675ebfe8691a052bdd16cb0ff8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.4/supabase_2.118.0-beta.4_darwin_amd64.tar.gz"
      sha256 "ce8b2c314f6933e0f999b2c5c8bf3f7e9d6a828446f002db4cec2cdcbd809b21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.4/supabase_2.118.0-beta.4_linux_arm64.tar.gz"
      sha256 "e6c682c179f3b9b9832b0c12589f3949200a89a6f35ad4af183467547b8caa67"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.4/supabase_2.118.0-beta.4_linux_amd64.tar.gz"
      sha256 "27c93e055d3ae9c5636bf6bf9ca1e45f4d7dac989530b4c715428a48dfd4bda4"
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
