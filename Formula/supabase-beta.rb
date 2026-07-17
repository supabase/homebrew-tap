class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.32/supabase_2.110.0-beta.32_darwin_arm64.tar.gz"
      sha256 "40bfb849583a57419bf5be1ffdc0f55f20676ccf2b1ecc59762618b973eaaff9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.32/supabase_2.110.0-beta.32_darwin_amd64.tar.gz"
      sha256 "98fa612b24ab3f9cd20a292828aa3a13681044d2300e1a3dbed9ad9afad46ac3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.32/supabase_2.110.0-beta.32_linux_arm64.tar.gz"
      sha256 "ecabac794501df18875c0fbfc4319f2b82ccb1e1ab90d5b14d3a6e570936f966"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.32/supabase_2.110.0-beta.32_linux_amd64.tar.gz"
      sha256 "5313d1fbc42621dadd0ea4e6386339fd6b0bd9e315a4bd3a480c3f89403446be"
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
