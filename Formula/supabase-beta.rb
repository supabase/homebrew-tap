class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.26/supabase_2.106.0-beta.26_darwin_arm64.tar.gz"
      sha256 "b02b1479c9596d89a4eecea7824f7da19f7218738cc43e334cd45aa0a410d1e2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.26/supabase_2.106.0-beta.26_darwin_amd64.tar.gz"
      sha256 "a18f3d59d9074d5010ac32ce3042c455f129e24ee67ccee1bf52a9c25bd29d02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.26/supabase_2.106.0-beta.26_linux_arm64.tar.gz"
      sha256 "56f3817d6e781229aa5ce7841510c4959073d2fc7ad36b2ed6b1ba3c1f4447b2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.26/supabase_2.106.0-beta.26_linux_amd64.tar.gz"
      sha256 "bd2ab75bb2e08128d64752fd6df3cf9cccdd19b0b778a19fd92b168a0e3b7402"
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
