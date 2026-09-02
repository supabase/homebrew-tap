class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.10/supabase_3.0.0-beta.10_darwin_arm64.tar.gz"
      sha256 "3a827d3fde4a8b7f49ab7dbd22546755e961155c3273e045173b209abb412d6c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.10/supabase_3.0.0-beta.10_darwin_amd64.tar.gz"
      sha256 "957253ab6b55f2042bfff6f7ff3bd4e6b8a3474e582872cdaec9aac09ab06121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.10/supabase_3.0.0-beta.10_linux_arm64.tar.gz"
      sha256 "af4397f623b1b9423a09374228e01acd9bb817572fdee1242b2dc72362b0e7cb"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.10/supabase_3.0.0-beta.10_linux_amd64.tar.gz"
      sha256 "b872f0030c1f916494a1b29a4df4bfb219b2c07340514bb44de25dfc0c19339e"
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
