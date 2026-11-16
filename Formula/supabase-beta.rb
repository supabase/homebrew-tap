class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.20/supabase_3.2.0-beta.20_darwin_arm64.tar.gz"
      sha256 "3f23b113527b8b9098f13b0a4dfc7beaef0b54660753a9ae0c6e9a9a509eccfc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.20/supabase_3.2.0-beta.20_darwin_amd64.tar.gz"
      sha256 "5500ccfc07dcf64599ad7a59943d1ee5bdb13a807cbb597a1d038af05f0b8ee6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.20/supabase_3.2.0-beta.20_linux_arm64.tar.gz"
      sha256 "a16831603509b1f7e8897f2a4f56e78c6beeef6d4c23c5b25770608f22d4948f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.20/supabase_3.2.0-beta.20_linux_amd64.tar.gz"
      sha256 "3a215955e8115bc348235593ec8c41c7d2affff4fb005a1476286f1cbf931f46"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
