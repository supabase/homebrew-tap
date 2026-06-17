class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_darwin_arm64.tar.gz"
      sha256 "edcd58818414834f1a9e8acc89063b292defb6e41e3494287a9a2a6e0c150e0a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_darwin_amd64.tar.gz"
      sha256 "1c2bbcbd730e70d00533219e623b1a848aa8ada7d5a7b6184d755379824677b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_linux_arm64.tar.gz"
      sha256 "d54648dd7f46ab824ba483bf4db712235a58c3242c2ff675ac7732a9b4f21e0f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_linux_amd64.tar.gz"
      sha256 "ea233b337be698cee5bbca0795ee3e63b9dd154948c515c03cb72f191b3d103c"
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
