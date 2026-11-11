class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.2/supabase_3.2.0-beta.2_darwin_arm64.tar.gz"
      sha256 "e07bff4d620c3eef1d53dbdb258ce63ff02778b89cdcbb41524a1aa4ce2a6c61"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.2/supabase_3.2.0-beta.2_darwin_amd64.tar.gz"
      sha256 "4d996fc5213e312f73fea2acf244ef29d04e8291f311cffc4f65027887d23fd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.2/supabase_3.2.0-beta.2_linux_arm64.tar.gz"
      sha256 "e4460ff96fc3749eee7ed741b1b62bab3e2bf9e5ad06f05883c6876c2bdbb292"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.2/supabase_3.2.0-beta.2_linux_amd64.tar.gz"
      sha256 "99a878d85f7f07e61a16ad68730930b3cdaf3bd18ffe44a82e1117d59b0ca809"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
