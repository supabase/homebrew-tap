class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.101.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.2/supabase_2.101.0-beta.2_darwin_arm64.tar.gz"
      sha256 "5555614d2d4e2adcbf77d2fa6ae427b822e239f5fefcbdbb19479fc9a0b35245"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.2/supabase_2.101.0-beta.2_darwin_amd64.tar.gz"
      sha256 "808746f58cc6560a6041bd942af8479586f08165fedb5e54595c7c74eb9140de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.2/supabase_2.101.0-beta.2_linux_arm64.tar.gz"
      sha256 "050a74036a632a617e0caef24b3367a82bb03a2e242bc6f8b52406c9ce37594c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.2/supabase_2.101.0-beta.2_linux_amd64.tar.gz"
      sha256 "831251c8b8ec57b9a3bc6d65c59feaebedc8d4ad12f08dda4a44da160d6c5401"
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
