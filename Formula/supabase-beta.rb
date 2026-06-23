class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.18/supabase_2.108.0-beta.18_darwin_arm64.tar.gz"
      sha256 "5f5bf0557e3d39a550ed63279f2b61181d0faa89765fa519afa05ca5815c33ee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.18/supabase_2.108.0-beta.18_darwin_amd64.tar.gz"
      sha256 "0efe00ef00ce6f656997262bcc3e2bc127d7c15f90a860f7642f59f654326214"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.18/supabase_2.108.0-beta.18_linux_arm64.tar.gz"
      sha256 "2aaabf8b435a37a099d1467756f0673ea5cf07c304a49d98bfe3e7b546f90e3e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.18/supabase_2.108.0-beta.18_linux_amd64.tar.gz"
      sha256 "cd3c77e347537ff3727b490cf2becc33353ae8bb600fcd1b217dfaabf4d690e3"
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
