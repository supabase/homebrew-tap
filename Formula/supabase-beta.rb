class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.16/supabase_2.106.0-beta.16_darwin_arm64.tar.gz"
      sha256 "bec385a530d60d690e51c3b0022cdfe087c9d154d7d52d5b42c7bfe5e2e6c9d0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.16/supabase_2.106.0-beta.16_darwin_amd64.tar.gz"
      sha256 "9eaa5df67766640eeb7422d4f0df6d3698718b9fdd4b3501868c6d5b68a442a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.16/supabase_2.106.0-beta.16_linux_arm64.tar.gz"
      sha256 "77afb250c33d4cde3bd263731145185001a8c116519644cdfd127d3df734d12a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.16/supabase_2.106.0-beta.16_linux_amd64.tar.gz"
      sha256 "86580fc87bbedf68d035d769293e21ca817caae494ca57f261b4a4d242ea7f8c"
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
