class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.12/supabase_2.118.0-beta.12_darwin_arm64.tar.gz"
      sha256 "2e57b8a697ad66ed1c6747dda8ffecce8d36a4937a0d9c0d4a6a3d6190beac8f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.12/supabase_2.118.0-beta.12_darwin_amd64.tar.gz"
      sha256 "16efbb47d83043fbaf36d590d5d125c4650d548ebbfa23b9208dd4420240cfeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.12/supabase_2.118.0-beta.12_linux_arm64.tar.gz"
      sha256 "99ad08ec45d51d5bdf16b89cf67eb548128ac1f5bd52a2daaddf521a1222a929"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.12/supabase_2.118.0-beta.12_linux_amd64.tar.gz"
      sha256 "632950882f396d70420fc14dc483c8057677bad21d0fece37dee73933a849334"
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
