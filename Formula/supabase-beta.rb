class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.19/supabase_2.117.0-beta.19_darwin_arm64.tar.gz"
      sha256 "993105ca81e561fa57cc4c640dc2b6dc49abd823ad0261e8e28e1408932a7b5b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.19/supabase_2.117.0-beta.19_darwin_amd64.tar.gz"
      sha256 "4fd136a6dc45730d5620d5ea515e6999f996e24bfb23438fe0ce2c6d559a69f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.19/supabase_2.117.0-beta.19_linux_arm64.tar.gz"
      sha256 "49a3878811de8a7b11cea9f6ebd0ea1b38883dbee510917d817e11ac26f7d7fa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.19/supabase_2.117.0-beta.19_linux_amd64.tar.gz"
      sha256 "916b1e911e7f71ae2d19db5cc1019266689461b8c803a5588dfc363a224c200f"
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
