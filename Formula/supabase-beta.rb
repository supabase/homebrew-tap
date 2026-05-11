class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.4/supabase_2.99.0-beta.4_darwin_arm64.tar.gz"
      sha256 "1ab45c5796ed19f40bf2bdf2b88c853c39ac39859879695425ebdd81015f3463"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.4/supabase_2.99.0-beta.4_darwin_amd64.tar.gz"
      sha256 "9ee95033bfcbb4b49c69fde3c861effe7e8b5ef8e90499683c2adcc01af054b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.4/supabase_2.99.0-beta.4_linux_arm64.tar.gz"
      sha256 "215241613dd4009419237787081f6dc466035c8fddcbb975a86963a2b41e8299"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.4/supabase_2.99.0-beta.4_linux_amd64.tar.gz"
      sha256 "e12f704ebd781cd157d1dcba73c319656b1b249fec791b6f7b3193eb90f72cf6"
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
