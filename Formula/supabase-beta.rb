class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.19/supabase_3.1.0-beta.19_darwin_arm64.tar.gz"
      sha256 "da9d1750cef713731c20c6c8933385d86dba662c4ee4af024aaee819a4a410dd"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.19/supabase_3.1.0-beta.19_darwin_amd64.tar.gz"
      sha256 "a8e3293245bb81a9a9577fbe1353f0e6d170ef60e828f2e622d756d6bd79ea91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.19/supabase_3.1.0-beta.19_linux_arm64.tar.gz"
      sha256 "809dfdec4db7536c24ba1c6457470c5f3a3c4ff450ffc08b2398eb11d7c52c24"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.19/supabase_3.1.0-beta.19_linux_amd64.tar.gz"
      sha256 "4787744ea1fdb52ee6f2f3bed044dfaf7cd929d9e6a76ecf9bae1aae3fed7ed2"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
