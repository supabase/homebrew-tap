class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.28/supabase_2.106.0-beta.28_darwin_arm64.tar.gz"
      sha256 "9db0c6fecdcb3899eccc9106a1e35a1b0241eeb98d24e00c3193d5f0cfeb6d13"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.28/supabase_2.106.0-beta.28_darwin_amd64.tar.gz"
      sha256 "3c1edbabecf796af7665a1eac5cb84abd038635ecab6995544fa981c14eba536"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.28/supabase_2.106.0-beta.28_linux_arm64.tar.gz"
      sha256 "cc87a0bad4cac0ba486c24705accdefad9e8b8dd28d3deff24ee283509433abe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.28/supabase_2.106.0-beta.28_linux_amd64.tar.gz"
      sha256 "382ed15835624660efc2dc687caf64fd39fb85fd83d97a6201219af73ed57429"
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
