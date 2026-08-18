class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.24/supabase_2.115.0-beta.24_darwin_arm64.tar.gz"
      sha256 "d62c21add08814c318fc180ea30065da28b028a8fca543376f607a417ab08c3c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.24/supabase_2.115.0-beta.24_darwin_amd64.tar.gz"
      sha256 "c699ffe3b850fa37412d2b82d8ca102fd62072fa2e04268113cefc0ff49b00fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.24/supabase_2.115.0-beta.24_linux_arm64.tar.gz"
      sha256 "75ee6eeb84fbb8073cc99c6b5713887efcaa9b6533f0c2eeae83971e1fe4e0b6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.24/supabase_2.115.0-beta.24_linux_amd64.tar.gz"
      sha256 "80702d87cfb0cae81f9ae3e27d17e1607adcf4839275bb286ce8a97124f7b51c"
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
