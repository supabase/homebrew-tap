class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.21/supabase_2.110.0-beta.21_darwin_arm64.tar.gz"
      sha256 "aeaf7af9ba431985cf4dfb42754274909a18cfa367ce44f2102f2dffbfd14c58"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.21/supabase_2.110.0-beta.21_darwin_amd64.tar.gz"
      sha256 "8c461d5d8f64500113f8bf95c31daf5d7d18e5033bd3778ee4afab619178578f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.21/supabase_2.110.0-beta.21_linux_arm64.tar.gz"
      sha256 "33351918104be4fe839d57e582bae258171cbad9dd7484acf43792351130561d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.21/supabase_2.110.0-beta.21_linux_amd64.tar.gz"
      sha256 "f8da1c47f2032adf9c0373c6ff6aead884f97b7bfef4d97a00a6152b4d6d7329"
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
