class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.24/supabase_2.110.0-beta.24_darwin_arm64.tar.gz"
      sha256 "b89b7f6a5f949a998f4a29c0eb054006b767bb3b319e02ed2cd7f0a924ac8925"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.24/supabase_2.110.0-beta.24_darwin_amd64.tar.gz"
      sha256 "4e2cfef11dc0bdbe6acea86270ad1a434188b8418788b284f0465f5169c21453"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.24/supabase_2.110.0-beta.24_linux_arm64.tar.gz"
      sha256 "d7dc22f5b18dd2c51c46ffaaf51f628b0fd3424384f94cbebb1f15b096e8641d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.24/supabase_2.110.0-beta.24_linux_amd64.tar.gz"
      sha256 "83498d37bae6e231e185aa5851100a0b3053e836776e7df2ea37e2c2a6243a26"
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
