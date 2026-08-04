class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.9/supabase_2.111.1-beta.9_darwin_arm64.tar.gz"
      sha256 "b4d3cd84436105c59e3d26f86343e83aae919175cac2922bc5217f1eb417e3ad"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.9/supabase_2.111.1-beta.9_darwin_amd64.tar.gz"
      sha256 "e9913cf0cbb59cd4f859c64d07be646d55365bbd04980c78d9239dfc349e144d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.9/supabase_2.111.1-beta.9_linux_arm64.tar.gz"
      sha256 "cbe40a2febdf613bf42019dd984de4be7f6afb8264ea0e732fc474aceaa57451"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.9/supabase_2.111.1-beta.9_linux_amd64.tar.gz"
      sha256 "be2c7f440f6e5567beeff62837240dd5fa06416c23b0c832fd429c13f6040c6e"
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
