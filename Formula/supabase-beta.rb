class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.15/supabase_2.110.0-beta.15_darwin_arm64.tar.gz"
      sha256 "7ea1cefcd3691351da038b42c4a0ca9e0ce63ca5dd292df0460e36b1eb22790d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.15/supabase_2.110.0-beta.15_darwin_amd64.tar.gz"
      sha256 "a37de055adbcf2e8803e7c53f9650dffb0b38a75f44e3f67e83b1ac1aa9fd345"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.15/supabase_2.110.0-beta.15_linux_arm64.tar.gz"
      sha256 "fdcf4804169ba38b85062fa337cdf75b277d889d262e37654b003966de5f0185"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.15/supabase_2.110.0-beta.15_linux_amd64.tar.gz"
      sha256 "f49f5f5e7c1a830dc087cc94f675ff59efbc0755efada343fdf3fa6fb3e1ad9f"
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
