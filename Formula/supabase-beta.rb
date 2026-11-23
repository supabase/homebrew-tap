class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.4/supabase_3.4.0-beta.4_darwin_arm64.tar.gz"
      sha256 "3f7c93d0a499fa414330d98c63ffdfbf4f46493a0cc1bff0f2e33e9b5ef39bfd"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.4/supabase_3.4.0-beta.4_darwin_amd64.tar.gz"
      sha256 "f10ca7c65ca652ef51930df90b81c6711d6814bea66065f0a85381fcd34996d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.4/supabase_3.4.0-beta.4_linux_arm64.tar.gz"
      sha256 "247c38037c5c9a1d8b751b0e275f79c49b5fafa1fcbe887a1758242bcf0d8f4a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.4/supabase_3.4.0-beta.4_linux_amd64.tar.gz"
      sha256 "d66449eaaedc3660f3bc18e28b56856e5da385e0034145e360cf3f0d1a85f0ae"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
