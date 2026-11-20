class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.12/supabase_3.3.0-beta.12_darwin_arm64.tar.gz"
      sha256 "483ffe03e7bf27967dc3d2668ee756c2211e42c5404005824c74eb1bd460ca38"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.12/supabase_3.3.0-beta.12_darwin_amd64.tar.gz"
      sha256 "07e0ead2ca655428d3003fe18d4f23265dc4de5c7ee1b3188f97419392718746"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.12/supabase_3.3.0-beta.12_linux_arm64.tar.gz"
      sha256 "34dc9effced195c458a15ea74e55882a9345aa2d77b2aeaa0c23472642c8e000"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.12/supabase_3.3.0-beta.12_linux_amd64.tar.gz"
      sha256 "4f7c742f4d63adc280c6aa94cab7fe9354c34b6a63dce8bac8ee1bd44519d080"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
