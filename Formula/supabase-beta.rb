class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.37/supabase_2.110.0-beta.37_darwin_arm64.tar.gz"
      sha256 "278f3d5722b07bcf5ca0dd973c024d9854ad40ded8e4ca0e2f6bf78e8bcb3c03"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.37/supabase_2.110.0-beta.37_darwin_amd64.tar.gz"
      sha256 "7caf65d415fac962b18ff4ad51d2348ac021d8b4cfefa9d5bf6b05630fd1c1e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.37/supabase_2.110.0-beta.37_linux_arm64.tar.gz"
      sha256 "2854cb4919f010920425998be9f42f59a61c9eb48f90f8cd8917cc470b622d98"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.37/supabase_2.110.0-beta.37_linux_amd64.tar.gz"
      sha256 "510de8385d0cdb89632357c2b077d8fff0aa2f612c9e6a96798d0550299ef626"
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
