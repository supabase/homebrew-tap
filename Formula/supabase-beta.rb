class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.20/supabase_2.117.0-beta.20_darwin_arm64.tar.gz"
      sha256 "91d6362692cc710962015f3a38e258694c89dd588d256476e3ed621242ca5c39"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.20/supabase_2.117.0-beta.20_darwin_amd64.tar.gz"
      sha256 "14d6185b138513f729b40c329748bbe2d65a52a9a0ee5b0a432f68d6a639da04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.20/supabase_2.117.0-beta.20_linux_arm64.tar.gz"
      sha256 "7ab2d6c2edf1e6eb1e6a8e29bb61e30d20bb25d3cfad75e4246fc335fd469a79"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.20/supabase_2.117.0-beta.20_linux_amd64.tar.gz"
      sha256 "1d5941da1d471cfc6aadcd46c68773bebc13895d407ca2a44f66055571965f30"
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
