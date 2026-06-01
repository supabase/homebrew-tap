class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.6/supabase_2.104.0-beta.6_darwin_arm64.tar.gz"
      sha256 "d34807f317b9a62c1c6d95c3a8f52fe48cc967dc0408dfd88a74d9ea69694823"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.6/supabase_2.104.0-beta.6_darwin_amd64.tar.gz"
      sha256 "f1d0b842b8b6019c103d4c2b300845087f84b66b6399088f10f06cbe4309f9ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.6/supabase_2.104.0-beta.6_linux_arm64.tar.gz"
      sha256 "a808e3e931f7b40e1b064f8ab276fd39e0fbf5f9917635ba1f518c99f0d52898"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.6/supabase_2.104.0-beta.6_linux_amd64.tar.gz"
      sha256 "e32b98b4aec303117d409d44408f3957ad61fec330f239e7f33ab5dd721c2522"
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
