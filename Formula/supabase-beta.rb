class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.1/supabase_3.2.0-beta.1_darwin_arm64.tar.gz"
      sha256 "754e7ff4c6a60571de8a1a53197b936d33e8c2e17b992ba8f4035424ee658944"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.1/supabase_3.2.0-beta.1_darwin_amd64.tar.gz"
      sha256 "97afd7f15c652ff4f0cf013668e0c74b15e902308d05dbb5a8874b94e56a5af5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.1/supabase_3.2.0-beta.1_linux_arm64.tar.gz"
      sha256 "303c288e5fbcc1ef6d528602b05a0d032380b55c62e2d9c08fc2523032e3712f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.1/supabase_3.2.0-beta.1_linux_amd64.tar.gz"
      sha256 "0bb51c6f5361ba343e31d429f347b6db1f37a4780e63dc6db614c23efa75ed0c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
