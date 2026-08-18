class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.1/supabase_2.115.1-beta.1_darwin_arm64.tar.gz"
      sha256 "f6fe8f4634da601f78f39b21c5ee92d29701aa30e20f8f2ffd45de6557808241"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.1/supabase_2.115.1-beta.1_darwin_amd64.tar.gz"
      sha256 "974ac1f60b6ac192831719d95704ebd728ec8a57da46a493154d833aad37a5a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.1/supabase_2.115.1-beta.1_linux_arm64.tar.gz"
      sha256 "100878c19190ccd8e70e33e00228d19a1ea2b50adfe898b22e7f1565da69563d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.1/supabase_2.115.1-beta.1_linux_amd64.tar.gz"
      sha256 "5735943c862dda7d106cc6fb694da9b9fab9c196f031fbc94d8417ac465314d8"
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
