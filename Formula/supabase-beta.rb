class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.41/supabase_2.110.0-beta.41_darwin_arm64.tar.gz"
      sha256 "2b3e82fd2ecfdef0f1f005f1f9e9ff6e9ea56b73a9d5378f61adee83a5e5e011"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.41/supabase_2.110.0-beta.41_darwin_amd64.tar.gz"
      sha256 "05463355686ce80b0bad48c601ae3512d2a113f1011cac8a57732856411e4242"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.41/supabase_2.110.0-beta.41_linux_arm64.tar.gz"
      sha256 "ac006f4ef670a87ad112524cf3020d606af49ed4223b1b729818cc0069ff8832"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.41/supabase_2.110.0-beta.41_linux_amd64.tar.gz"
      sha256 "0b4905b561140585242b39578cfef68d3d8d5d91b4cc289f6932f43845c66adb"
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
