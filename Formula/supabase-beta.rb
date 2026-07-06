class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.20/supabase_2.109.1-beta.20_darwin_arm64.tar.gz"
      sha256 "232490fdc8457e1937de8bf6c9c755e5e5fee9d9ec722a357c400686019407be"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.20/supabase_2.109.1-beta.20_darwin_amd64.tar.gz"
      sha256 "e21a2e49682259a4e4e3309670106f8ac2ec0b9903c3b77515637b3765d4a3d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.20/supabase_2.109.1-beta.20_linux_arm64.tar.gz"
      sha256 "629b497047dc427c6433a8f3870cf9c0ce1a12ff25964c9aec6ed5b36330604a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.20/supabase_2.109.1-beta.20_linux_amd64.tar.gz"
      sha256 "b65196e85705fbd74c592fb6bcadf72c89986c419d49278bef2ab0ce95a0d5c3"
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
