class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.5/supabase_2.109.0-beta.5_darwin_arm64.tar.gz"
      sha256 "0e86709e45f17b759cafbba13aba9baa4129c77c94be116a457d1c40a8fabb16"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.5/supabase_2.109.0-beta.5_darwin_amd64.tar.gz"
      sha256 "1a1275b1fb896fd2ee8f2cca3c014113d599a2cec9203479084d788404ef4506"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.5/supabase_2.109.0-beta.5_linux_arm64.tar.gz"
      sha256 "7583ac13021ef32fb8d3c52a91f794962560b6119fb17be03435f0403ea50b7e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.5/supabase_2.109.0-beta.5_linux_amd64.tar.gz"
      sha256 "a07166abc03910965bd25c92244055749e0eeb79bffd43a10e1292933ee4d470"
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
