class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.23/supabase_2.115.0-beta.23_darwin_arm64.tar.gz"
      sha256 "7edc0bb8a76f223dd9c59a4b3112a1372705508932355d98a6b1366e2c4e4caf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.23/supabase_2.115.0-beta.23_darwin_amd64.tar.gz"
      sha256 "59682a53e0073b0d8986ed5825fa88e553ba43f5d22aec7efa50bf413fd04bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.23/supabase_2.115.0-beta.23_linux_arm64.tar.gz"
      sha256 "31246e8a1900d7b6ac10c5b1283d6b694fecd74d9d61a3f9d648957068e91e6b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.23/supabase_2.115.0-beta.23_linux_amd64.tar.gz"
      sha256 "604c28f0fe0382c29bcc8b71a0368620383c360cd0bfb30c346f32621d8c91d2"
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
