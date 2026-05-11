class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.3/supabase_2.99.0-beta.3_darwin_arm64.tar.gz"
      sha256 "ebf971252cdf2ddb27f921d0f32b620b416b93e5021262b310b67c0a89c40b92"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.3/supabase_2.99.0-beta.3_darwin_amd64.tar.gz"
      sha256 "7f06c179af919de37ff1aab1372f4fa142b5dbc68038b7868aaaf1e5d0a23c0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.3/supabase_2.99.0-beta.3_linux_arm64.tar.gz"
      sha256 "dea18869df994db2277bab6b7a6961bcd3280c2f3f49d5e646d5f58292fc4f32"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.3/supabase_2.99.0-beta.3_linux_amd64.tar.gz"
      sha256 "6f5d8d9fa70bfff71dd247a25139512b2b16fce535614f2e20969e2431aca737"
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
