class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.15/supabase_3.1.0-beta.15_darwin_arm64.tar.gz"
      sha256 "916f55c1aba15c02438a972e4520bad21701c3e470bca78932c6a4d0d0947dea"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.15/supabase_3.1.0-beta.15_darwin_amd64.tar.gz"
      sha256 "324d562981ba0e61c4f32a932f74f966f8b71175417abf7125b90e3127084b37"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.15/supabase_3.1.0-beta.15_linux_arm64.tar.gz"
      sha256 "ba7cbd1e3660c63a02154932ff602a1e42f78c385fb574ce995de13805d6ccce"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.15/supabase_3.1.0-beta.15_linux_amd64.tar.gz"
      sha256 "e1c4fea639cc2dd5eed82f433513b0d0e40764de9ac2b7686e7a0b98c443fe84"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
