class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.8/supabase_2.112.0-beta.8_darwin_arm64.tar.gz"
      sha256 "aea741a3d5ce0d851b48d0a98a202e148241d7076af0a2dcd2c79095d9a4edd6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.8/supabase_2.112.0-beta.8_darwin_amd64.tar.gz"
      sha256 "86c270311b8016b8aea53f574cba81107ec4c3374da8c3aa2fd496b5ef6c2a49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.8/supabase_2.112.0-beta.8_linux_arm64.tar.gz"
      sha256 "028636dded7fb289dde0fb89449f9e37ad4f3ee09bbbff59913fa653250a5418"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.8/supabase_2.112.0-beta.8_linux_amd64.tar.gz"
      sha256 "aa0a3afe77e2596ff03e8fe9e5eb763062e8b8e91d5e4aaa5ab6300e0e80ac7e"
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
