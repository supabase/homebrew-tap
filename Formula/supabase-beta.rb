class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.4/supabase_2.116.0-beta.4_darwin_arm64.tar.gz"
      sha256 "332ac7429cccc8fb521ab5b6cbc1063b8a0d12bf6ada9cc1f927f643e219f7ef"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.4/supabase_2.116.0-beta.4_darwin_amd64.tar.gz"
      sha256 "6fb7caef86705d470e4c53525fcdbc5090cb021a896d08e5a560e1cc9d7f0c19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.4/supabase_2.116.0-beta.4_linux_arm64.tar.gz"
      sha256 "6c8ec840fef5a1f214f202812073c185f91a5102d20955cd9cc50de46751175f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.4/supabase_2.116.0-beta.4_linux_amd64.tar.gz"
      sha256 "3d9a488615552fe13f88362aa32f90a678d5aa4ca6cc05b5249071f159961011"
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
