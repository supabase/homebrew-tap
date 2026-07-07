class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.21/supabase_2.109.1-beta.21_darwin_arm64.tar.gz"
      sha256 "106598bb8f3178e3948544963a399a81fc42abec21482725ecc4fe0acd01d2f3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.21/supabase_2.109.1-beta.21_darwin_amd64.tar.gz"
      sha256 "572957a2cda61e442f4d37e1f9510010af6e4cdbfe3a9da2c90d0670f5488adb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.21/supabase_2.109.1-beta.21_linux_arm64.tar.gz"
      sha256 "2f23078723f682ae604756ff13832b84246b1d2faf331f33ed42f9ea682c3e7c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.21/supabase_2.109.1-beta.21_linux_amd64.tar.gz"
      sha256 "4adbfb12127982ec2630ccabf5109f59aa17209f2900738b6a6c321c005f2092"
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
