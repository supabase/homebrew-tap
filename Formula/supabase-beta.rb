class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.1-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.4/supabase_2.104.1-beta.4_darwin_arm64.tar.gz"
      sha256 "b08d4da17e63654eed3a0f271e2edadfdd0406839ad9ed47f60118b164847c22"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.4/supabase_2.104.1-beta.4_darwin_amd64.tar.gz"
      sha256 "701ccae32fa0aaa42b028125d7dfa4b4ae2f41851388bb232075ed52ca680a2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.4/supabase_2.104.1-beta.4_linux_arm64.tar.gz"
      sha256 "633d1bd7dc9aa129669cb23865f8d749d54e4dbf396894bf995ca7b74d30bb89"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.4/supabase_2.104.1-beta.4_linux_amd64.tar.gz"
      sha256 "b8755097cdd803400e741b2171d229b44cdca4486d8dde67b379785052575e37"
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
