class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.10/supabase_2.102.0-beta.10_darwin_arm64.tar.gz"
      sha256 "1cbbee7b21b37e8fbb7fd3cb5b491529e9ab7e2838b20f364a8cd518a19a6ab3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.10/supabase_2.102.0-beta.10_darwin_amd64.tar.gz"
      sha256 "213b5d2aa04b146c9969e51cd96588db2613ee72770fa1d50974662e09cf3d65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.10/supabase_2.102.0-beta.10_linux_arm64.tar.gz"
      sha256 "ad27d9d8f7721a531e0c6fc0655f8b80afac804ff914443bd179b97a1b63fffc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.10/supabase_2.102.0-beta.10_linux_amd64.tar.gz"
      sha256 "9a2b3e5b523d2cca6279810f598096ba570f5a0f09546f689c236b59c6359961"
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
