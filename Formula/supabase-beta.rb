class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.3/supabase_3.4.0-beta.3_darwin_arm64.tar.gz"
      sha256 "970a35883377beebb6641c9b03f1d7962fc334708c75c670dcc0290d4e0146b7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.3/supabase_3.4.0-beta.3_darwin_amd64.tar.gz"
      sha256 "a385c608d3e12f88950aec23ce0163ca7e08a0ccf24b4c1d48180bce61bb6511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.3/supabase_3.4.0-beta.3_linux_arm64.tar.gz"
      sha256 "c572ef168da45dd1a69bc44679e160d2536dc5cfc9d01007989b63e40d6e999b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0-beta.3/supabase_3.4.0-beta.3_linux_amd64.tar.gz"
      sha256 "810bb1a674a3efb4163a17e2ddeb4c08285da45b3f752823e556f0c67da714e9"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
