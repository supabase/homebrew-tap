class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0/supabase_2.111.0_darwin_arm64.tar.gz"
      sha256 "f2cd4fbfcdf5bd6753ab85468b3e1711f80d1b212f4a43f1a998fafb19962762"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0/supabase_2.111.0_darwin_amd64.tar.gz"
      sha256 "42ef21b0c2ef52cc40597490260dfbbe6f484fa1ba5cea26475281f0e3eefef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0/supabase_2.111.0_linux_arm64.tar.gz"
      sha256 "e84f7e247eefc5f38d78effa1ef2e8cd6d2a1af251121d99c1859b24953992c3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0/supabase_2.111.0_linux_amd64.tar.gz"
      sha256 "31ee8a152e9c8c8eddae072c6bc7c9119748a96c8cdaf21a6d31c9ce7e62cc18"
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
