class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.3/supabase_2.102.0-beta.3_darwin_arm64.tar.gz"
      sha256 "4973659deeb5ffb7c296610ccf50f888650816b47d56c2a3a71352cc76471ab8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.3/supabase_2.102.0-beta.3_darwin_amd64.tar.gz"
      sha256 "9bf366816ff805ffc6361d12431fd00219a4e53c531719f216a810350ea1d26d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.3/supabase_2.102.0-beta.3_linux_arm64.tar.gz"
      sha256 "c571d6bc2e97b3308914bc7ce9f92ab3ec903405310d7e22c90ff518a97d878c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.3/supabase_2.102.0-beta.3_linux_amd64.tar.gz"
      sha256 "ba727a1327a9cdf80ae71fcdb978adc4426ed4d725d267e06c1683817886d412"
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
