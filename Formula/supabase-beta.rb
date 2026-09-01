class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.3/supabase_3.0.0-beta.3_darwin_arm64.tar.gz"
      sha256 "09c36740678d6aa9a0d86c403e3788ae17956fd39e8cf31fdf464a4e4e0a3800"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.3/supabase_3.0.0-beta.3_darwin_amd64.tar.gz"
      sha256 "2dab8ae9e8d2467e9256d750f934a1d8f2445f058a77e14fd922dc473665732b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.3/supabase_3.0.0-beta.3_linux_arm64.tar.gz"
      sha256 "f0f0e113e2c2ff9f4525985470f17e5340530c7103f539cad54bfbff6658a46a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.3/supabase_3.0.0-beta.3_linux_amd64.tar.gz"
      sha256 "d54556ab9be33baf6ce23ffe6bff2a1343ce111efaa0c27cabada2bfac321e2c"
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
