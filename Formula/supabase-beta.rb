class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.1/supabase_2.114.0-beta.1_darwin_arm64.tar.gz"
      sha256 "25bf853b6ceac15a8a3189543b849447f741112b9b771a43c988d62ed4c11e91"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.1/supabase_2.114.0-beta.1_darwin_amd64.tar.gz"
      sha256 "2a8de058d445494a0ce96b6dbd7475aca807a4033996a72afe98ed16dee8ee6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.1/supabase_2.114.0-beta.1_linux_arm64.tar.gz"
      sha256 "ff43095455c30f71eb103141781b4e5cdd6974043beb64a972b9bdedc4d80de2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.1/supabase_2.114.0-beta.1_linux_amd64.tar.gz"
      sha256 "01d49e702041f3db945ed5b10558a88b35370ccd2385e7b7cc1613a939017254"
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
