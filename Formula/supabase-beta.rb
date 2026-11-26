class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.5.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.5/supabase_3.5.0-beta.5_darwin_arm64.tar.gz"
      sha256 "dfde3cdaeba3c3c65416832994fec0cc477b29fd744385a6da25facc8e0a2061"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.5/supabase_3.5.0-beta.5_darwin_amd64.tar.gz"
      sha256 "7f9a2bb65b15ccd6995fd4601fd27476013948cd6d2e3ab7bd9775d6677a8333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.5/supabase_3.5.0-beta.5_linux_arm64.tar.gz"
      sha256 "92f925ed17a1c65141119c62bf2c1cd2ed7ee0c9e1ac1a131cd28a023a8f98a5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.5.0-beta.5/supabase_3.5.0-beta.5_linux_amd64.tar.gz"
      sha256 "b704d5218a8206a9cf2aee17f7771fd82b6d593feea301d2a2d94a3670c6fdab"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
